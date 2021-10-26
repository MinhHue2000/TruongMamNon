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
    public partial class capnhatthongtinsinhvien : Form
    {
        public int state;
        public capnhatthongtinsinhvien()
        {
            InitializeComponent();
        }
        public byte[] ImageToByteArray(System.Drawing.Image imageIn)
        {
            using (var ms = new System.IO.MemoryStream())
            {
                imageIn.Save(ms, imageIn.RawFormat);
                return ms.ToArray();
            }
        }
        public Image ByteArrayToImage(byte[] byteArrayin)
        {
            System.IO.MemoryStream ms = new System.IO.MemoryStream(byteArrayin);
            Image returnimage = Image.FromStream(ms);
            return returnimage;
        }
        private void GetAllItemRow_Chick(object sender, Telerik.WinControls.UI.GridViewCellEventArgs e)
        {
            rtmasv.Text = rgvttsv.SelectedRows[0].Cells[0].Value.ToString();
            rthosv.Text = rgvttsv.SelectedRows[0].Cells[1].Value.ToString();
            rttensv.Text = rgvttsv.SelectedRows[0].Cells[2].Value.ToString();
            rdtpngaysinh.Text = rgvttsv.SelectedRows[0].Cells[3].Value.ToString();
            rtgioitinh.Text = rgvttsv.SelectedRows[0].Cells[4].Value.ToString();
           // rtCMT.Text = rgvttsv.SelectedRows[0].Cells[5].Value.ToString();
            rdlop.Text = rgvttsv.SelectedRows[0].Cells[6].Value.ToString();
            rtdiachi.Text = rgvttsv.SelectedRows[0].Cells[8].Value.ToString();
            //rtSDT.Text = rgvttsv.SelectedRows[0].Cells[8].Value.ToString();
            rtdantoc.Text = rgvttsv.SelectedRows[0].Cells[7].Value.ToString();
            rttongiao.Text = rgvttsv.SelectedRows[0].Cells[5].Value.ToString();
            //imagesv.Image = ByteArrayToImage((byte[])rgvttsv.SelectedRows[0].Cells[11].Value);
        }


        private void frmMain_load(object sender, EventArgs e)
        {

            QLMNEntities sv = new QLMNEntities();
            rgvttsv.DataSource = sv.alltre();
            rdlop.DataSource = sv.getalllop();
        }


        private void rbthem_Click(object sender, EventArgs e)
        {
            state = 2;
            rtmasv.ReadOnly = false;
            rthosv.ReadOnly = false;
            rttensv.ReadOnly = false;
            rdtpngaysinh.ReadOnly = false;
            rtgioitinh.ReadOnly = false;
            //rtCMT.ReadOnly = false;
            rdlop.ReadOnly = false;
            rtdiachi.ReadOnly = false;
            //rtSDT.ReadOnly = false;
            rtdantoc.ReadOnly = false;
            rttongiao.ReadOnly = false;
        }

        private void rbsua_Click(object sender, EventArgs e)
        {
            state = 1;
            rthosv.ReadOnly = false;
            rttensv.ReadOnly = false;
            rdtpngaysinh.ReadOnly = false;
            rtgioitinh.ReadOnly = false;
           // rtCMT.ReadOnly = false;
            rdlop.ReadOnly = false;
            rtdiachi.ReadOnly = false;
          //  rtSDT.ReadOnly = false;
            rtdantoc.ReadOnly = false;
            rttongiao.ReadOnly = false;
        }

        private void rbxoa_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Bạn có chắc muốn xóa khoa này?", "Thông báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                QLMNEntities qlhssv = new QLMNEntities();
                qlhssv.Deletettre(rtmasv.Text);
                rgvttsv.DataSource = qlhssv.alltre();

            }
        }

        private void rbluu_Click(object sender, EventArgs e)
        {
            QLMNEntities qlsv = new QLMNEntities();
            if (state == 1)
            {
                qlsv.Updatetre(rtmasv.Text, rthosv.Text, rttensv.Text, DateTime.Parse(rdtpngaysinh.Text), rtgioitinh.Text, rdlop.SelectedValue.ToString(), rtdiachi.Text,  rtdantoc.Text, rttongiao.Text);

            }
            if (state == 2)
            {
                qlsv.Inserttre(rtmasv.Text, rthosv.Text, rttensv.Text, DateTime.Parse(rdtpngaysinh.Text), rtgioitinh.Text, rdlop.SelectedValue.ToString(), rtdiachi.Text,rtdantoc.Text, rttongiao.Text);

            }
            rgvttsv.DataSource = qlsv.alltre();
        }

        private void rbhuy_Click(object sender, EventArgs e)
        {
            rtmasv.ResetText();
            rthosv.ResetText();
            rttensv.ResetText();
            rtgioitinh.ResetText();
            //rtCMT.ResetText();
            rdlop.ResetText();
            rtdiachi.ResetText();
            //rtSDT.ResetText();
            rtdantoc.ResetText();
            rttongiao.ResetText();
        }

        private void masv_validating(object sender, CancelEventArgs e)
        {

            if (string.IsNullOrEmpty(rtmasv.Text))
            {
                e.Cancel = true;
                rtmasv.Focus();
                erpmasv.SetError(rtmasv, "Mã sinh viên không được trống!");
            }
            else
            {
                e.Cancel = false;
                erpmasv.SetError(rtmasv, "");
            }
        }

     //  private void rbchonanh_Click(object sender, EventArgs e)
      //  {
       //     OpenFileDialog of = new OpenFileDialog();
       //     of.Filter = "image file (*.jpg; *.png; *.jpeg)|*.jpg; *.png; *.jpeg";
       //     if (of.ShowDialog() == DialogResult.OK)
       //         imagesv.Image = new Bitmap(of.FileName);
      //  }
    }
}
