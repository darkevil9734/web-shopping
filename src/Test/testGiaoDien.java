package Test;

import org.testng.annotations.Test;
import org.testng.annotations.BeforeTest;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.testng.annotations.AfterTest;

@Test
public class testGiaoDien {
	
	@Test
	public void moTrangChu() throws Exception {
		System.setProperty("webdriver.chrome.driver", "F:/Program Files (x86)/Google/Chrome/Application/chromedriver.exe");
		try {
			ChromeOptions options = new ChromeOptions();
			options.addArguments("--disable-notifications");
			WebDriver driver = new ChromeDriver(options);
			driver.get("http://localhost:11769/web-mobile/trang-chu.jsp");
			//driver.manage().window().maximize();
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}	
	}
	
	@Test
	public void moTrangDangNhap() throws Exception {
		System.setProperty("webdriver.chrome.driver", "F:/Program Files (x86)/Google/Chrome/Application/chromedriver.exe");
		try {
			ChromeOptions options =	 new ChromeOptions();
			options.addArguments("--disable-notifications");
			WebDriver driver = new ChromeDriver(options);
			driver.get("http://localhost:11769/web-mobile/dang-nhap.jsp");
			//driver.manage().window().maximize();
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}	
	}
	
	@Test
	public void moTrangDangKy() throws Exception {
		System.setProperty("webdriver.chrome.driver", "F:/Program Files (x86)/Google/Chrome/Application/chromedriver.exe");
		try {
			ChromeOptions options =	 new ChromeOptions();
			options.addArguments("--disable-notifications");
			WebDriver driver = new ChromeDriver(options);
			driver.get("http://localhost:11769/web-mobile/dang-ky.jsp");
			//driver.manage().window().maximize();
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}	
	}
	
}
