using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Windows.Forms;

namespace AppTracNghiem
{
    public partial class BaiThi : Form
    {
        private string userEmail;  
        private List<Question> dsQuestion; 
        private int cauHoiHienTai = 0; 
        private int timeLeft = 3600; 
        private DateTime thoiGianBatDau;
        private int maNguoiDung;
        private int maCaThi;
        private int soLuongCauHoi;
        public BaiThi(string email, int maNguoiDung, int maCaThi)
        {
            InitializeComponent();
            this.userEmail = email;
            this.maNguoiDung = maNguoiDung;
            this.maCaThi = maCaThi;
        }



        private void BaiThi_Load(object sender, EventArgs e)
        {
            lbltentaikhoan.Text = $"Tài khoản: {userEmail}";

            thoiGianBatDau = DateTime.Now;  

            LoadQuestion(); 
            timer1.Start(); 
        }

        private void LoadQuestion()
        {
            List<Question> allQuestion = new List<Question>();
            dsQuestion = new List<Question>();

            DatabaseConnection dbConn = new DatabaseConnection();
            SqlConnection conn = dbConn.GetConnection();

            if (conn.State == System.Data.ConnectionState.Open)
            {
                // Lấy số lượng câu hỏi và thời gian làm bài từ ca thi
                string queryCaThi = "SELECT SoLuongCauHoi, ThoiGianLamBai FROM CaThi WHERE MaCaThi = @MaCaThi";
                SqlCommand cmdCaThi = new SqlCommand(queryCaThi, conn);
                cmdCaThi.Parameters.AddWithValue("@MaCaThi", maCaThi);

                SqlDataReader readerCaThi = cmdCaThi.ExecuteReader();
                int soLuongCauHoi = 0;
                if (readerCaThi.Read())
                {
                    soLuongCauHoi = readerCaThi.GetInt32(0);  // Gán giá trị cho biến soLuongCauHoi
                    int thoiGianLamBai = readerCaThi.GetInt32(1);
                    timeLeft = thoiGianLamBai * 60; // Chuyển thời gian từ phút sang giây
                }
                readerCaThi.Close();

                string query = "SELECT * FROM CauHoi WHERE DaXoa = 0";
                SqlCommand cmd = new SqlCommand(query, conn);
                SqlDataReader reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    Question question = new Question
                    {
                        MaCauHoi = reader.GetInt32(0),
                        NoiDung = reader.GetString(1),
                        LuaChonA = reader.GetString(2),
                        LuaChonB = reader.GetString(3),
                        LuaChonC = reader.GetString(4),
                        LuaChonD = reader.GetString(5),
                        DapAnDung = reader.GetString(6)[0]
                    };
                    allQuestion.Add(question);
                }

                reader.Close();
                dbConn.CloseConnection(conn);

                // Kiểm tra nếu danh sách câu hỏi đủ số lượng
                if (allQuestion.Count < soLuongCauHoi)
                {
                    MessageBox.Show("Không đủ số lượng câu hỏi.");
                    return;
                }

                Random rand = new Random();
                dsQuestion = allQuestion.OrderBy(x => rand.Next()).Take(soLuongCauHoi).ToList(); // Lấy số lượng câu hỏi từ ca thi

                HienThiCauHoi(0);
            }
            else
            {
                MessageBox.Show("Không thể kết nối đến cơ sở dữ liệu.");
            }
        }



        private void HienThiCauHoi(int soCauHoi)
        {
            if (soCauHoi < 0 || soCauHoi >= dsQuestion.Count)
            {
                MessageBox.Show("Câu hỏi không tồn tại hoặc đã vượt quá giới hạn.");
                return;
            }

            var question = dsQuestion[soCauHoi];
            lblCauHoi.MaximumSize = new Size(700, 0);  
            lblCauHoi.Text = $"Câu hỏi {soCauHoi + 1}: {question.NoiDung}";

            rbOptionA.AutoSize = false;
            rbOptionA.Size = new Size(700, 60);  
            rbOptionA.TextAlign = ContentAlignment.TopLeft; 
            rbOptionA.Text = question.LuaChonA;

            rbOptionB.AutoSize = false;
            rbOptionB.Size = new Size(700, 60);  
            rbOptionB.TextAlign = ContentAlignment.TopLeft;
            rbOptionB.Text = question.LuaChonB;

            rbOptionC.AutoSize = false;
            rbOptionC.Size = new Size(700, 60);
            rbOptionC.TextAlign = ContentAlignment.TopLeft;
            rbOptionC.Text = question.LuaChonC;

            rbOptionD.AutoSize = false;
            rbOptionD.Size = new Size(700, 60);
            rbOptionD.TextAlign = ContentAlignment.TopLeft;
            rbOptionD.Text = question.LuaChonD;

            switch (question.UserAnswer)
            {
                case 'A':
                    rbOptionA.Checked = true;
                    break;
                case 'B':
                    rbOptionB.Checked = true;
                    break;
                case 'C':
                    rbOptionC.Checked = true;
                    break;
                case 'D':
                    rbOptionD.Checked = true;
                    break;
                default:
                    rbOptionA.Checked = rbOptionB.Checked = rbOptionC.Checked = rbOptionD.Checked = false;
                    break;
            }
        }

        private void btnNext_Click(object sender, EventArgs e)
        {
            if (cauHoiHienTai < dsQuestion.Count - 1)
            {
                cauHoiHienTai++;
                HienThiCauHoi(cauHoiHienTai);
            }
            else
            {
                MessageBox.Show("Bạn đã đến câu hỏi cuối cùng.");
            }
        }
        private void LuuCauHoiTrongBaiThi(int maBaiThi)
        {
            try
            {
                DatabaseConnection dbConn = new DatabaseConnection();
                SqlConnection conn = dbConn.GetConnection();

                if (conn.State == ConnectionState.Open)
                {
                    foreach (var question in dsQuestion)
                    {
                       
                        bool dapAnDung = (question.UserAnswer == question.DapAnDung);

                        string query = "INSERT INTO CauHoiTrongBaiThi (MaBaiThi, MaCauHoi, CauTraLoiNguoiDung, DapAnDung, DaXoa) " +
                                       "VALUES (@MaBaiThi, @MaCauHoi, @CauTraLoiNguoiDung, @DapAnDung, 0)";

                        SqlCommand cmd = new SqlCommand(query, conn);
                        cmd.Parameters.AddWithValue("@MaBaiThi", maBaiThi);
                        cmd.Parameters.AddWithValue("@MaCauHoi", question.MaCauHoi);
                        cmd.Parameters.AddWithValue("@CauTraLoiNguoiDung", question.UserAnswer == '\0' ? DBNull.Value : (object)question.UserAnswer);  // Nếu người dùng chưa trả lời, lưu null
                        cmd.Parameters.AddWithValue("@DapAnDung", dapAnDung ? 1 : 0);  // Đánh dấu đúng/sai

                        cmd.ExecuteNonQuery();
                    }

                    dbConn.CloseConnection(conn);
                }
                else
                {
                    MessageBox.Show("Không thể kết nối cơ sở dữ liệu.");
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Có lỗi xảy ra khi lưu câu hỏi: " + ex.Message);
            }
        }
        private void btnSubmit_Click(object sender, EventArgs e)
        {
            DialogResult result = MessageBox.Show("Bạn có chắc chắn muốn nộp bài không?", "Xác nhận", MessageBoxButtons.YesNo);
            if (result == DialogResult.Yes)
            {
                timer1.Stop();
                NopBai();
     
            }
        }
        private int LuuKetQuaVaoCoSoDuLieu(int soCauDung, decimal diem)
        {
            int maBaiThi = 0;  // Khởi tạo giá trị mặc định
            try
            {
                DatabaseConnection dbConn = new DatabaseConnection();
                SqlConnection conn = dbConn.GetConnection();

                if (conn.State == ConnectionState.Open)
                {
                    if (thoiGianBatDau == DateTime.MinValue)
                    {
                        thoiGianBatDau = DateTime.Now;
                    }

                    string queryBaiThi = "INSERT INTO BaiThi (MaNguoiDung, ThoiGianBatDau, ThoiGianKetThuc, Diem, DaXoa) " +
                                         "OUTPUT INSERTED.MaBaiThi " +
                                         "VALUES (@MaNguoiDung, @ThoiGianBatDau, @ThoiGianKetThuc, @Diem, 0)";
                    SqlCommand cmdBaiThi = new SqlCommand(queryBaiThi, conn);
                    cmdBaiThi.Parameters.AddWithValue("@MaNguoiDung", maNguoiDung);
                    cmdBaiThi.Parameters.AddWithValue("@ThoiGianBatDau", thoiGianBatDau);  
                    cmdBaiThi.Parameters.AddWithValue("@ThoiGianKetThuc", DateTime.Now);
                    cmdBaiThi.Parameters.AddWithValue("@Diem", diem);

                    maBaiThi = (int)cmdBaiThi.ExecuteScalar();

                    string queryKetQua = "INSERT INTO KetQua (MaBaiThi, SoCauDung, SoCauSai, Diem, DaXoa) " +
                                         "VALUES (@MaBaiThi, @SoCauDung, @SoCauSai, @Diem, 0)";
                    SqlCommand cmdKetQua = new SqlCommand(queryKetQua, conn);
                    cmdKetQua.Parameters.AddWithValue("@MaBaiThi", maBaiThi);
                    cmdKetQua.Parameters.AddWithValue("@SoCauDung", soCauDung);
                    cmdKetQua.Parameters.AddWithValue("@SoCauSai", dsQuestion.Count - soCauDung);
                    cmdKetQua.Parameters.AddWithValue("@Diem", diem);

                    cmdKetQua.ExecuteNonQuery();

                    dbConn.CloseConnection(conn);
                }
                else
                {
                    MessageBox.Show("Không thể kết nối cơ sở dữ liệu.");
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Có lỗi xảy ra khi lưu kết quả: " + ex.Message);
            }

            return maBaiThi;  // Trả về mã bài thi
        }

        private void NopBai()
        {
            timeLeft = 0; // Đặt thời gian về 0
            lblThoiGianConLai.Text = $"Thời gian còn lại: 0:00"; // Cập nhật giao diện
            int soCauDung = 0;
            List<Question> cauSai = new List<Question>();

            // Kiểm tra từng câu hỏi xem đúng hay sai
            foreach (var question in dsQuestion)
            {
                if (question.UserAnswer == question.DapAnDung)
                {
                    soCauDung++; // Đếm số câu trả lời đúng
                }
                else
                {
                    cauSai.Add(question); // Thêm câu hỏi vào danh sách các câu sai
                }
            }

            // Tính điểm, không cần sửa
            decimal diem = Math.Round((decimal)soCauDung / dsQuestion.Count * 10, 2);

            // Lưu kết quả vào cơ sở dữ liệu, không cần sửa
            int maBaiThi = LuuKetQuaVaoCoSoDuLieu(soCauDung, diem);

            LuuCauHoiTrongBaiThi(maBaiThi);

            // Mở form KetQuaThi để hiển thị câu hỏi sai và kết quả tổng quát
            KetQuaThi ketQuaForm = new KetQuaThi(cauSai, soCauDung, dsQuestion.Count);
            ketQuaForm.Show();

            MessageBox.Show($"Kết quả: {soCauDung}/{dsQuestion.Count} câu đúng.\nĐiểm: {diem}");

            this.Close();  // Đóng form hiện tại
        }


        private void rbOptionA_CheckedChanged(object sender, EventArgs e)
        {
            if (rbOptionA.Checked)
            {
                dsQuestion[cauHoiHienTai].UserAnswer = 'A'; 
            }
        }

        private void rbOptionB_CheckedChanged(object sender, EventArgs e)
        {
            if (rbOptionB.Checked)
            {
                dsQuestion[cauHoiHienTai].UserAnswer = 'B';
            }
        }

        private void rbOptionC_CheckedChanged(object sender, EventArgs e)
        {
            if (rbOptionC.Checked)
            {
                dsQuestion[cauHoiHienTai].UserAnswer = 'C';
            }
        }

        private void rbOptionD_CheckedChanged(object sender, EventArgs e)
        {
            if (rbOptionD.Checked)
            {
                dsQuestion[cauHoiHienTai].UserAnswer = 'D';
            }
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            if (timeLeft > 0)
            {
                timeLeft--;
                lblThoiGianConLai.Text = $"Thời gian còn lại: {timeLeft / 60}:{timeLeft % 60:D2}";
            }
            else
            {
                timer1.Stop();
                NopBai();  // Tự động nộp bài khi hết thời gian
            }
        }


        private void CauTruocDo_Click(object sender, EventArgs e)
        {
            if (cauHoiHienTai > 0)  // Kiểm tra nếu không phải là câu hỏi đầu tiên
            {
                cauHoiHienTai--;  // Giảm số thứ tự câu hỏi hiện tại
                HienThiCauHoi(cauHoiHienTai);  // Hiển thị câu hỏi trước đó
            }
            else
            {
                MessageBox.Show("Bạn đang ở câu hỏi đầu tiên.");
            }
        }

        private void lblCauHoi_Click(object sender, EventArgs e)
        {

        }
    }
}