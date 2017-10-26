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
        public static IWebDriver driver;
        public void closeDriver()
        {
            driver.Close();
            //throw new NotImplementedException();
        }

        public void setUp()
        {
            driver = new ChromeDriver(@"F:/Program Files (x86)/Google/Chrome/Application/");
            //throw new NotImplementedException();
        }

        public void testSearch()
        {
            setUp();
            driver.Navigate().GoToUrl("http://localhost:8080/web-mobile/trang-chu.jsp");
            String tim_input = "iphone";
            //driver.FindElement(By.ClassName("search-input")).Clear();

            driver.FindElement(By.ClassName("search-input")).SendKeys(tim_input);
            
            driver.FindElement(By.ClassName("search-submit")).Click();
        }
    }
}
