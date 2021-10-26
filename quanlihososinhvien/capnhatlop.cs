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
    public partial class capnhatlop : Form
    {
        public int state;
        public capnhatlop()
        {
            InitializeComponent();
        }

        private void cn_lop_cellclick(object sender, Telerik.WinControls.UI.GridViewCellEventArgs e)
        {
            rtlop.Text = rgvkhoa.SelectedRows[0].Cells[0].Value.ToString();
            rtkhoa.Text = rgvkhoa.SelectedRows[0].Cells[1].Value.ToString();
        }

        private void frm_khoa_load(object sender, EventArgs e)
        {
            QLMNEntities sv = new QLMNEntities();
            rgvkhoa.DataSource = sv.allkhoa();
        }

        private void radButton1_Click(object sender, EventArgs e)
        {
            state = 2;
            rtlop.ReadOnly = false;
            rtkhoa.ReadOnly = false;
        }

        private void rbsua_Click(object sender, EventArgs e)
        {
            state = 1;
            rtlop.ReadOnly = false;
            rtkhoa.ReadOnly = false;
        }

        private void rbxoa_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Bạn có chắc muốn xóa khoa này?", "Thông báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                QLMNEntities qlhssv = new QLMNEntities();
                qlhssv.deleteKhoi(rtlop.Text);
                rgvkhoa.DataSource = qlhssv.allkhoa();

            }
        }

        private void rbluu_Click(object sender, EventArgs e)
        {
            QLMNEntities qlkhoa = new QLMNEntities();
            if (state == 1)
            {
                qlkhoa.updatekhoi(rtlop.Text, rtkhoa.Text);
            }
            else
            {
                qlkhoa.insertkhoi(rtlop.Text, rtkhoa.Text);
            }
            rgvkhoa.DataSource = qlkhoa.allkhoa();

        }

        private void rbhuy_Click(object sender, EventArgs e)
        {
            rtkhoa.ResetText();
            rtlop.ResetText();
        }
    }
}
