package cinnamontest.pages;

import com.nttdata.cinnamon.driver.By;
import com.nttdata.cinnamon.driver.Find;
import com.nttdata.cinnamon.driver.controls.Element;
import com.nttdata.cinnamon.driver.controls.InputTextField;
import static org.assertj.core.api.Assertions.assertThat;


public class SearchInGooglePage{ 
	@Find(by = By.Name, locator="Search")
	public InputTextField Search;

	@Find(by = By.XPath, locator = "//body")
	public Element formTitle;

	@Find(by = By.Name, locator="Search")
	public Element Search260;

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