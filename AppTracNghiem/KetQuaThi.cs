using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace AppTracNghiem
{
    public partial class KetQuaThi : Form
    {
        public KetQuaThi(List<Question> cauSai, int soCauDung, int tongSoCau)
        {
            InitializeComponent();
            this.dsCauSai = cauSai;
            this.soCauDung = soCauDung;
            this.tongSoCau = tongSoCau;
        }
        private List<Question> dsCauSai;  // Danh sách câu hỏi thí sinh làm sai
        private int soCauDung;
        private int tongSoCau;

        private void KetQuaThi_Load(object sender, EventArgs e)
        {
            // Hiển thị kết quả tổng quan
            label1.Text = $"Bạn đã trả lời đúng {soCauDung}/{tongSoCau} câu hỏi.";

            // Hiển thị danh sách câu sai trong DataGridView
            dataGridView1.DataSource = dsCauSai.Select(q => new {
                NoiDung = q.NoiDung,
                CauTraLoi = q.UserAnswer,
                DapAnDung = q.DapAnDung
            }).ToList();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.Close();

        }
    }
}
