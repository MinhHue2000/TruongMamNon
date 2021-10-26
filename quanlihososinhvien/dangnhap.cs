using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace quanlihososinhvien
{
    public partial class dangnhap : Form
    {
        public dangnhap()
        {
            InitializeComponent();
        }

        private void rbdangnhap_Click(object sender, EventArgs e)
        {

            if ((rttendangnhap.Text == "admin") && (rtmatkhau.Text == "1234"))
            {
                chucnangad ad = new chucnangad();
                this.Hide();
                ad.Show();
            }
            else
            {
                if ((rttendangnhap.Text == "hanh") && (rtmatkhau.Text == "1234"))
                {
                    chucnang sinhvien = new chucnang();
                    this.Hide();
                    sinhvien.Show();
                }

                else
                {
                    MessageBox.Show("bạn hãy đăng nhập lại", "thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                }
            }
        }

        private void rbthoat_Click(object sender, EventArgs e)
        {
            DialogResult result1 = MessageBox.Show("Bạn có chắc chắn muốn thoát không?", "Chú ý", MessageBoxButtons.YesNo, MessageBoxIcon.Question, MessageBoxDefaultButton.Button2);
            if (result1 == DialogResult.Yes)
            {
                // System.Windows.Forms.Application.Exit();
                this.Close();
            }
        }

        private void dangnhap_Load(object sender, EventArgs e)
        {

        }
    }
}
