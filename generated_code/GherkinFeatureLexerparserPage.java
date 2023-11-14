package cinnamontest.pages;

import com.nttdata.cinnamon.driver.By;
import com.nttdata.cinnamon.driver.Find;
import com.nttdata.cinnamon.driver.controls.Element;
import com.nttdata.cinnamon.driver.controls.InputTextField;
import static org.assertj.core.api.Assertions.assertThat;


public class GherkinFeatureLexerparserPage{ 
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