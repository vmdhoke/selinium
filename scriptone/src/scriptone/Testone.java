package scriptone;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;

public class Testone {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.setProperty("webdriver.gecko.driver", "C:\\Program Files\\geckodriver");

		WebDriver driver = new FirefoxDriver();
        driver.get("hartleylab.com");
        driver.manage().window().maximize();

	}

}
