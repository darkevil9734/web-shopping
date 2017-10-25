using OpenQA.Selenium;
using OpenQA.Selenium.Chrome;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SeleniumCSharpTest
{
    class Program
    {
        
        static void Main(string[] args)
        {
            IWebDriver driver = new ChromeDriver(@"F:/Program Files (x86)/Google/Chrome/Application/");
            driver.Navigate().GoToUrl("http://localhost:8080/web-mobile/trang-chu.jsp");

            
        }
    }
}
