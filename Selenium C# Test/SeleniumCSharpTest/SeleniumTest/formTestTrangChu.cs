using OpenQA.Selenium;
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
        public IWebDriver driver;
        public formTestTrangChu()
        {
            InitializeComponent();
        }

        private void formTestTrangChu_Load(object sender, EventArgs e)
        {
            testTrangChu trangChu = new testTrangChu();
            trangChu.setUp();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            testTrangChu trangChu = new testTrangChu();
            trangChu.setUp();
            driver.Navigate().GoToUrl("http://localhost:8080/web-mobile/trang-chu.jsp");
            String tim_input = "iphone";

            testTrangChu search = new testTrangChu();
            search.test_value_search();
        }
    }
}
