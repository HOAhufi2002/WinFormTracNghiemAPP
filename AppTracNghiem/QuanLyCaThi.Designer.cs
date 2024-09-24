
namespace AppTracNghiem
{
    partial class QuanLyCaThi
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.panel1 = new System.Windows.Forms.Panel();
            this.dgvcathi = new System.Windows.Forms.DataGridView();
            this.panel2 = new System.Windows.Forms.Panel();
            this.dateTimePicker2 = new System.Windows.Forms.DateTimePicker();
            this.dateTimePicker1 = new System.Windows.Forms.DateTimePicker();
            this.txtTenCaThi = new System.Windows.Forms.TextBox();
            this.txtmaca = new System.Windows.Forms.TextBox();
            this.btnupdate = new System.Windows.Forms.Button();
            this.btndelete = new System.Windows.Forms.Button();
            this.btnadd = new System.Windows.Forms.Button();
            this.numericSoLuongCauHoi = new System.Windows.Forms.NumericUpDown();
            this.numericThoiGianLamBai = new System.Windows.Forms.NumericUpDown();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvcathi)).BeginInit();
            this.panel2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.numericSoLuongCauHoi)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.numericThoiGianLamBai)).BeginInit();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.dgvcathi);
            this.panel1.Location = new System.Drawing.Point(292, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(708, 444);
            this.panel1.TabIndex = 17;
            // 
            // dgvcathi
            // 
            this.dgvcathi.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dgvcathi.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvcathi.Location = new System.Drawing.Point(-1, 0);
            this.dgvcathi.Name = "dgvcathi";
            this.dgvcathi.RowHeadersWidth = 51;
            this.dgvcathi.Size = new System.Drawing.Size(706, 438);
            this.dgvcathi.TabIndex = 0;
            this.dgvcathi.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvcathi_CellClick);
            this.dgvcathi.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvcathi_CellContentClick);
            // 
            // panel2
            // 
            this.panel2.Controls.Add(this.label2);
            this.panel2.Controls.Add(this.label1);
            this.panel2.Controls.Add(this.numericThoiGianLamBai);
            this.panel2.Controls.Add(this.numericSoLuongCauHoi);
            this.panel2.Controls.Add(this.dateTimePicker2);
            this.panel2.Controls.Add(this.dateTimePicker1);
            this.panel2.Controls.Add(this.txtTenCaThi);
            this.panel2.Location = new System.Drawing.Point(-1, 2);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(295, 318);
            this.panel2.TabIndex = 18;
            // 
            // dateTimePicker2
            // 
            this.dateTimePicker2.Location = new System.Drawing.Point(56, 127);
            this.dateTimePicker2.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.dateTimePicker2.Name = "dateTimePicker2";
            this.dateTimePicker2.Size = new System.Drawing.Size(182, 20);
            this.dateTimePicker2.TabIndex = 7;
            this.dateTimePicker2.ValueChanged += new System.EventHandler(this.dateTimePicker2_ValueChanged);
            // 
            // dateTimePicker1
            // 
            this.dateTimePicker1.Location = new System.Drawing.Point(56, 82);
            this.dateTimePicker1.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.dateTimePicker1.Name = "dateTimePicker1";
            this.dateTimePicker1.Size = new System.Drawing.Size(182, 20);
            this.dateTimePicker1.TabIndex = 6;
            this.dateTimePicker1.ValueChanged += new System.EventHandler(this.dateTimePicker1_ValueChanged);
            // 
            // txtTenCaThi
            // 
            this.txtTenCaThi.Location = new System.Drawing.Point(56, 32);
            this.txtTenCaThi.Multiline = true;
            this.txtTenCaThi.Name = "txtTenCaThi";
            this.txtTenCaThi.Size = new System.Drawing.Size(182, 31);
            this.txtTenCaThi.TabIndex = 0;
            // 
            // txtmaca
            // 
            this.txtmaca.Location = new System.Drawing.Point(132, 200);
            this.txtmaca.Name = "txtmaca";
            this.txtmaca.Size = new System.Drawing.Size(8, 20);
            this.txtmaca.TabIndex = 3;
            // 
            // btnupdate
            // 
            this.btnupdate.Location = new System.Drawing.Point(204, 364);
            this.btnupdate.Name = "btnupdate";
            this.btnupdate.Size = new System.Drawing.Size(75, 34);
            this.btnupdate.TabIndex = 21;
            this.btnupdate.Text = "Sửa";
            this.btnupdate.UseVisualStyleBackColor = true;
            this.btnupdate.Click += new System.EventHandler(this.btnupdate_Click);
            // 
            // btndelete
            // 
            this.btndelete.Location = new System.Drawing.Point(114, 364);
            this.btndelete.Name = "btndelete";
            this.btndelete.Size = new System.Drawing.Size(75, 34);
            this.btndelete.TabIndex = 20;
            this.btndelete.Text = "Xóa";
            this.btndelete.UseVisualStyleBackColor = true;
            this.btndelete.Click += new System.EventHandler(this.btndelete_Click);
            // 
            // btnadd
            // 
            this.btnadd.Location = new System.Drawing.Point(16, 364);
            this.btnadd.Name = "btnadd";
            this.btnadd.Size = new System.Drawing.Size(75, 34);
            this.btnadd.TabIndex = 19;
            this.btnadd.Text = "Thêm";
            this.btnadd.UseVisualStyleBackColor = true;
            this.btnadd.Click += new System.EventHandler(this.btnadd_Click);
            // 
            // numericSoLuongCauHoi
            // 
            this.numericSoLuongCauHoi.Location = new System.Drawing.Point(161, 172);
            this.numericSoLuongCauHoi.Name = "numericSoLuongCauHoi";
            this.numericSoLuongCauHoi.Size = new System.Drawing.Size(73, 20);
            this.numericSoLuongCauHoi.TabIndex = 8;
            // 
            // numericThoiGianLamBai
            // 
            this.numericThoiGianLamBai.Location = new System.Drawing.Point(161, 202);
            this.numericThoiGianLamBai.Name = "numericThoiGianLamBai";
            this.numericThoiGianLamBai.Size = new System.Drawing.Size(73, 20);
            this.numericThoiGianLamBai.TabIndex = 9;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(56, 172);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(87, 13);
            this.label1.TabIndex = 10;
            this.label1.Text = "Số lượng câu hỏi";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(56, 205);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(87, 13);
            this.label2.TabIndex = 11;
            this.label2.Text = "Thời gian làm bài";
            // 
            // QuanLyCaThi
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1000, 444);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.panel2);
            this.Controls.Add(this.txtmaca);
            this.Controls.Add(this.btnupdate);
            this.Controls.Add(this.btndelete);
            this.Controls.Add(this.btnadd);
            this.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.Name = "QuanLyCaThi";
            this.Text = "QuanLyCaThi";
            this.Load += new System.EventHandler(this.QuanLyCaThi_Load);
            this.panel1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dgvcathi)).EndInit();
            this.panel2.ResumeLayout(false);
            this.panel2.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.numericSoLuongCauHoi)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.numericThoiGianLamBai)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.DataGridView dgvcathi;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.TextBox txtmaca;
        private System.Windows.Forms.TextBox txtTenCaThi;
        private System.Windows.Forms.Button btnupdate;
        private System.Windows.Forms.Button btndelete;
        private System.Windows.Forms.Button btnadd;
        private System.Windows.Forms.DateTimePicker dateTimePicker2;
        private System.Windows.Forms.DateTimePicker dateTimePicker1;
        private System.Windows.Forms.NumericUpDown numericThoiGianLamBai;
        private System.Windows.Forms.NumericUpDown numericSoLuongCauHoi;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
    }
}