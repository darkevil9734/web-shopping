using OpenQA.Selenium;
using OpenQA.Selenium.Chrome;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SeleniumTest
{
    class testChucNangTrangChu : setUpSelenium
    {
        public void setUp(IWebDriver driver)
        {
            driver = new ChromeDriver(@"F:/Program Files (x86)/Google/Chrome/Application/");
            //throw new NotImplementedException();
        }


    }
}
