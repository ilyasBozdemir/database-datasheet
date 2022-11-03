package pages.HepsiBurada;

import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import utilities.PagePath;
import utilities.PropertiesFile;

import java.util.List;

public    class BasePage {
    WebDriver driver ;
    public String getUrl;
    public String expectedTitle;
    public String getTitle;

    public void hover(By locator){
        Actions action = new Actions(driver);
        action.moveToElement(find(locator)).perform();
    }
    public void hover(WebElement Element){
        Actions action = new Actions(driver);
        action.moveToElement(Element).perform();
    }
    public void scrollIntoElement(By locator) throws InterruptedException {
        Actions a = new Actions(driver);
        a.moveToElement(find(locator));
        a.perform();
    }
    public void scrollIntoElement(WebElement element) throws InterruptedException {
        Actions a = new Actions(driver);
        a.moveToElement(element);
        a.perform();
    }
    public WebElement find(By locator){
        return driver.findElement(locator);
    }

    public List<WebElement> findAll(By locator){
        return driver.findElements(locator);
    }

    public void click(By locator){
        find(locator).click();
    }

    public void type(By locator , String text){
        find(locator).sendKeys(text);
    }

    public Boolean isDisplayed(By locator){
        return find(locator).isDisplayed();
    }
    public  By getPropertiesToXPath(PagePath path, String Key){
       return By.xpath( PropertiesFile.getProperties(path,Key));
    }

}
