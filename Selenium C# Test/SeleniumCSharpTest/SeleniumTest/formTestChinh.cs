using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace SeleniumTest
{
    public partial class formTestChinh : Form
    {
        public formTestChinh()
        {
            InitializeComponent();
        }

        private void formTestChinh_Load(object sender, EventArgs e)
        {
           
        }

        private void button1_Click(object sender, EventArgs e)
        {
            formTestTrangChu trangchu = new formTestTrangChu();
            trangchu.Show();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            testTrangChu dongWeb = new testTrangChu();
            dongWeb.dongTrinhDuyet();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            testTrangDangNhap login = new testTrangDangNhap();
            login.Show();
        }

        private void btnNullCart_Click(object sender, EventArgs e)
        {
            testTrangDangKy register = new testTrangDangKy();
            register.Show();
        }

        private void button1_Click_1(object sender, EventArgs e)
        {
            testTrangGopY gopy = new testTrangGopY();
            gopy.Show();
        }

        private void button2_Click_1(object sender, EventArgs e)
        {
            testTrangNhanVien staff = new testTrangNhanVien();
            staff.Show();
        }
    }
}
