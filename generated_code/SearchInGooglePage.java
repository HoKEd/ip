package cinnamontest.pages;

import com.nttdata.cinnamon.driver.By;
import com.nttdata.cinnamon.driver.Find;
import com.nttdata.cinnamon.driver.controls.Element;
import com.nttdata.cinnamon.driver.controls.InputTextField;
import static org.assertj.core.api.Assertions.assertThat;


public class SearchInGooglePage{ 
	@Find(by = By.Name, locator="Buscar")
	public InputTextField Buscar;

	@Find(by = By.XPath, locator = "//body")
	public Element formTitle;

	private final String TITLE = "";

	@Find(by = By.Name, locator="Buscar")
	public Element Buscar150;


	/** null
	 */
	
	public boolean isPageDisplayed() {
		assertThat(this.formTitle.isDisplayed())
			                .withFailMessage("Title element not displayed!")
			                .isTrue();
		
			        return this.formTitle.getText().equals(TITLE);
	}

}