using OpenQA.Selenium;
using OpenQA.Selenium.Chrome;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SeleniumCSharpTest
{
    class testClass
    {
        public static IWebDriver driver;
        public void setUp()
        {
            driver = new ChromeDriver(@"F:/Program Files (x86)/Google/Chrome/Application/");
        }

        public void moTrangChu()
        {
            driver.Navigate().GoToUrl("http://localhost:8080/web-mobile/trang-chu.jsp");
        }
    }
}
