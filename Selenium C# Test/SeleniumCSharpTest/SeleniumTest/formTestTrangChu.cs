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
    public partial class formTestTrangChu : Form
    {
        public formTestTrangChu()
        {
            InitializeComponent();
        }

        private void formTestTrangChu_Load(object sender, EventArgs e)
        {
            testTrangChu trangChu = new testTrangChu();
            trangChu.setUp();
        }
    }
}
