using OpenQA.Selenium;
using OpenQA.Selenium.Chrome;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SeleniumTest
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
            setUp();
            driver.Navigate().GoToUrl("http://localhost:8080/web-mobile/trang-chu.jsp");
        }
        
        public void moTrangDangNhap()
        {
            setUp();
            driver.Navigate().GoToUrl("http://localhost:8080/web-mobile/dang-nhap.jsp");

        }

        public void dongTrinhDuyet()
        {
            driver.Close();
        }

        public void moTrangDangKy()
        {
            setUp();
            driver.Navigate().GoToUrl("http://localhost:8080/web-mobile/dang-ky.jsp");
        }

        // khi chưa nhập chữ vào khung tìm
        public void event_click_tim_kiem()
        {
            setUp();
            driver.Navigate().GoToUrl("http://localhost:8080/web-mobile/trang-chu.jsp");
            driver.FindElement(By.ClassName("search-submit")).Click();
        }

        // khi chưa có hàng trong giỏ
        public void event_click_gio_hang()
        {
            setUp();
            driver.Navigate().GoToUrl("http://localhost:8080/web-mobile/trang-chu.jsp");
            driver.FindElement(By.ClassName("cart-icon")).Click();
        }

        // khi chưa nhập gì mà submit
        public void event_click_email_bottom()
        {
            setUp();
            driver.Navigate().GoToUrl("http://localhost:8080/web-mobile/trang-chu.jsp");
            driver.FindElement(By.ClassName("button")).Click();
        }


    }
}
