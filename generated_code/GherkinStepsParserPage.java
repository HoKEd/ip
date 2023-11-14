package cinnamontest.pages;

import com.nttdata.cinnamon.driver.By;
import com.nttdata.cinnamon.driver.Find;
import com.nttdata.cinnamon.driver.controls.Element;
import com.nttdata.cinnamon.driver.controls.InputTextField;
import static org.assertj.core.api.Assertions.assertThat;


public class GherkinStepsParserPage{ 
	@Find(by = By.Name, locator="following")
	public InputTextField following296;

	@Find(by = By.Name, locator="following")
	public InputTextField following470;

	@Find(by = By.Name, locator="line")
	public Element line;

	@Find(by = By.Name, locator="following")
	public InputTextField following;

	@Find(by = By.XPath, locator = "//body")
	public Element formTitle;

	private final String TITLE = "";


	/** null
	 */
	
	public boolean isPageDisplayed() {
		assertThat(this.formTitle.isDisplayed())
			                .withFailMessage("Title element not displayed!")
			                .isTrue();
		
			        return this.formTitle.getText().equals(TITLE);
	}

}