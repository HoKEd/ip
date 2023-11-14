package cinnamontest.pages;

import com.nttdata.cinnamon.driver.By;
import com.nttdata.cinnamon.driver.Find;
import com.nttdata.cinnamon.driver.controls.Element;
import com.nttdata.cinnamon.driver.controls.InputTextField;
import static org.assertj.core.api.Assertions.assertThat;
import com.nttdata.cinnamon.modules.selenium.controls.SelectControl;


public class SendContactMessagePage{ 
	@Find(by = By.Name, locator="Company")
	public InputTextField Company;

	@Find(by = By.Name, locator="Your message field")
	public InputTextField Yourmessagefield;

	@Find(by = By.Name, locator="First Name")
	public InputTextField FirstName;

	@Find(by = By.Name, locator="Phone")
	public InputTextField Phone;

	@Find(by = By.Name, locator="Select field Label")
	public SelectControl SelectfieldLabel;

	@Find(by = By.XPath, locator = "//body")
	public Element formTitle;

	@Find(by = By.Name, locator="Last Name")
	public InputTextField LastName;

	@Find(by = By.Name, locator="Job")
	public Element Job;

	private final String TITLE = "";

	@Find(by = By.Name, locator="Send Message")
	public Element SendMessage;


	/** null
	 */
	
	public boolean isPageDisplayed() {
		assertThat(this.formTitle.isDisplayed())
			                .withFailMessage("Title element not displayed!")
			                .isTrue();
		
			        return this.formTitle.getText().equals(TITLE);
	}

}