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
    public partial class chucnang : Form
    {
        private int childFormNumber = 0;

        public chucnang()
        {
            InitializeComponent();
        }

        private void ShowNewForm(object sender, EventArgs e)
        {
            Form childForm = new Form();
            childForm.MdiParent = this;
            childForm.Text = "Window " + childFormNumber++;
            childForm.Show();
        }

        private void OpenFile(object sender, EventArgs e)
        {
            OpenFileDialog openFileDialog = new OpenFileDialog();
            openFileDialog.InitialDirectory = Environment.GetFolderPath(Environment.SpecialFolder.Personal);
            openFileDialog.Filter = "Text Files (*.txt)|*.txt|All Files (*.*)|*.*";
            if (openFileDialog.ShowDialog(this) == DialogResult.OK)
            {
                string FileName = openFileDialog.FileName;
            }
        }

        private void SaveAsToolStripMenuItem_Click(object sender, EventArgs e)
        {
            SaveFileDialog saveFileDialog = new SaveFileDialog();
            saveFileDialog.InitialDirectory = Environment.GetFolderPath(Environment.SpecialFolder.Personal);
            saveFileDialog.Filter = "Text Files (*.txt)|*.txt|All Files (*.*)|*.*";
            if (saveFileDialog.ShowDialog(this) == DialogResult.OK)
            {
                string FileName = saveFileDialog.FileName;
            }
        }

        private void ExitToolsStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void CutToolStripMenuItem_Click(object sender, EventArgs e)
        {
        }

        private void CopyToolStripMenuItem_Click(object sender, EventArgs e)
        {
        }

        private void PasteToolStripMenuItem_Click(object sender, EventArgs e)
        {
        }

        private void ToolBarToolStripMenuItem_Click(object sender, EventArgs e)
        {
           
        }

        private void StatusBarToolStripMenuItem_Click(object sender, EventArgs e)
        {
            
        }

        private void CascadeToolStripMenuItem_Click(object sender, EventArgs e)
        {
            LayoutMdi(MdiLayout.Cascade);
        }

        private void TileVerticalToolStripMenuItem_Click(object sender, EventArgs e)
        {
            LayoutMdi(MdiLayout.TileVertical);
        }

        private void TileHorizontalToolStripMenuItem_Click(object sender, EventArgs e)
        {
            LayoutMdi(MdiLayout.TileHorizontal);
        }

        private void ArrangeIconsToolStripMenuItem_Click(object sender, EventArgs e)
        {
            LayoutMdi(MdiLayout.ArrangeIcons);
        }

        private void CloseAllToolStripMenuItem_Click(object sender, EventArgs e)
        {
            foreach (Form childForm in MdiChildren)
            {
                childForm.Close();
            }
        }

        private void tcTTSV_Click(object sender, EventArgs e)
        {
            tracuuthongtintre tcttsv = new tracuuthongtintre();
            tcttsv.MdiParent = this;
            tcttsv.WindowState = FormWindowState.Maximized;
            tcttsv.Show();

        }

        private void tcDSSV_Click(object sender, EventArgs e)
        {
            
        }

        private void tcdiem_Click(object sender, EventArgs e)
        {
            Thucdon1 cnd = new Thucdon1();
            cnd.MdiParent = this;
            cnd.WindowState = FormWindowState.Maximized;
            cnd.Show();
        }

        private void Dangxuat_Click(object sender, EventArgs e)
        {
            DialogResult result1 = MessageBox.Show("Bạn có chắc chắn muốn đăng xuất không?", "Chú ý", MessageBoxButtons.YesNo, MessageBoxIcon.Question, MessageBoxDefaultButton.Button2);
            if (result1 == DialogResult.Yes)
            {
                dangnhap dangnhap = new dangnhap();
                this.Hide();
                dangnhap.Show();
            }
        }

        private void họcPhíToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Hocphi1 cnd = new Hocphi1();
            cnd.MdiParent = this;
            cnd.WindowState = FormWindowState.Maximized;
            cnd.Show();
        }

        private void QLdiem_Click(object sender, EventArgs e)
        {
            Thucdon1 cnd = new Thucdon1();
            cnd.MdiParent = this;
            cnd.WindowState = FormWindowState.Maximized;
            cnd.Show();
        }
    }
}
