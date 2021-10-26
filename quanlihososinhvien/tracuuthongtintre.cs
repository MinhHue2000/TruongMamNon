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
    public partial class tracuuthongtintre : Form
    {
        public tracuuthongtintre()
        {
            InitializeComponent();
        }

        private void tracuu_load(object sender, EventArgs e)
        {
            QLMNEntities sv = new QLMNEntities();
           rgvtracuusv.DataSource = sv.capnhattttre();
            rtmasv.ReadOnly = false;
            rthosv.ReadOnly = false;
            rttensv.ReadOnly = false;
            rtgioitinh.ReadOnly = false;
            rtdiachi.ReadOnly = false;
           
        }

        private void rbtracuu_Click(object sender, EventArgs e)
        {
            QLMNEntities sv = new QLMNEntities();
            rgvtracuusv.DataSource = sv.timkiemtttre(rtmasv.Text, rthosv.Text, rttensv.Text, rtgioitinh.Text, rtdiachi.Text);
        }

        private void rbreset_Click(object sender, EventArgs e)
        {
            rtmasv.ResetText();
            rthosv.ResetText();
            rttensv.ResetText();
            rtgioitinh.ResetText();
            rtdiachi.ResetText();
        }
           
    }
}

