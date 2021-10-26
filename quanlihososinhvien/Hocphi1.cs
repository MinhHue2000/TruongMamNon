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
    public partial class Hocphi1 : Form
    {
        public int state;
        public Hocphi1()
        {
            InitializeComponent();
        }

        private void Hocphi1_Load(object sender, EventArgs e)
        {
            QLMNEntities sv = new QLMNEntities();
            rgvhocphi.DataSource = sv.allhocphi();
        }

        private void rgvhocphi_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            state = 2;
            textBox1.ReadOnly = false;
            textBox2.ReadOnly = false;
            textBox3.ReadOnly = false;
        }

        private void button2_Click(object sender, EventArgs e)
        {
            state = 1;
            textBox3.ReadOnly = false;
        }

        private void hocphi(object sender, EventArgs e)
        {

        }
        private void GetAllItemRow_Chick(object sender, Telerik.WinControls.UI.GridViewCellEventArgs e)
        {
            textBox1.Text = rgvhocphi.SelectedRows[0].Cells[0].Value.ToString();
            textBox2.Text = rgvhocphi.SelectedRows[0].Cells[1].Value.ToString();
            textBox3.Text = rgvhocphi.SelectedRows[0].Cells[2].Value.ToString();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            QLMNEntities qlsv = new QLMNEntities();
            double hocphi = Convert.ToDouble(textBox3.Text);
            if (state == 1)
            {
                qlsv.updatehocphi(textBox1.Text, textBox2.Text, hocphi);

            }
            if (state == 2)
            {
                qlsv.inserthocphi(textBox1.Text, textBox2.Text, hocphi);

            }
            rgvhocphi.DataSource = qlsv.alltre();
        }
    }
}