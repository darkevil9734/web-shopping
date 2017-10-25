using OpenQA.Selenium;
using OpenQA.Selenium.Chrome;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SeleniumCSharpTest
{
    class moTrangChu
    {
        static void Main(string[] args)
        {
            testClass test = new testClass();
            test.setUp();
            test.moTrangChu();


        }
    }
}
