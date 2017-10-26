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
            testTrangChu test = new testTrangChu();
            test.setUp();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            testTrangChu testTrangChu = new testTrangChu();
            testTrangChu.moTrangChu();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            testTrangChu dongWeb = new testTrangChu();
            dongWeb.dongTrinhDuyet();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            testTrangChu searchNull = new testTrangChu();
            searchNull.event_click_tim_kiem();
        }

        private void btnNullCart_Click(object sender, EventArgs e)
        {
            testTrangChu cartNull = new testTrangChu();
            cartNull.event_click_gio_hang();
        }

        private void button1_Click_1(object sender, EventArgs e)
        {
            testTrangChu emailNull = new testTrangChu();
            emailNull.event_click_email_bottom();
        }
    }
}
