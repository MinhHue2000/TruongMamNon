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
    public partial class Thucdon1 : Form
    {
        public Thucdon1()
        {
            InitializeComponent();
        }

        private void Thucdon1_Load(object sender, EventArgs e)
        {
            QLMNEntities sv = new QLMNEntities();
            gvthucdon.DataSource = sv.allthucdon();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            QLMNEntities sv = new QLMNEntities();
            gvthucdon.DataSource = sv.timkimthucdon(textBox1.Text);
        }
    }
}
