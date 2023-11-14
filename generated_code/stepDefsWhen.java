package cinnamontest.stepdefs;

import com.google.inject.Inject;
import com.nttdata.cinnamon.driver.Driver;
import cinnamontest.pages.ClientDetailPage;
import cinnamontest.pages.SearchInGooglePage;
import io.cucumber.java.en.When;
import io.cucumber.java.en.And;
import cinnamontest.pages.MakeOrderPage;
import org.openqa.selenium.interactions.Actions;


public class stepDefsWhen extends BaseStep{ 
	private final MakeOrderPage makeorderpage;

	private final SearchInGooglePage searchingooglepage;

	private final Driver driver;

	private final ClientDetailPage clientdetailpage;


	/** Method autogenerated by iBDD tool
	 *	 Code implemented with a probability of: 0.7369094726941182
	 */
	@When("I complete the Search field with \"test\"")
	public void iCompleteSearchFieldWith(String Search) {
		this.searchingooglepage.Search.setValue(Search);
	}

	/** Method autogenerated by iBDD tool
	 *	 Code implemented with a probability of: 0.6923950858599055
	 */
	@When("I find all of the .feature files")
	public void iFindAllfeatureFiles() {
		this.makeorderpage.%LOCATOR%.setValue(%LOCATOR%);
	}

	/** Method autogenerated by iBDD tool
	 *	 Code implemented with a probability of: 0.6563569575782532
	 */
	@And("I parse the prettified representation of each of them")
	public void iParsePrettifiedRepresentationEachThem() {
		WebElement obj = this.makeorderpage.representation;
		Actions actions = new Actions(driver);
		actions.doubleClick(obj).perform();
	}

	/** Method autogenerated by iBDD tool
	 *	 Code implemented with a probability of: 0.8474126984126984
	 */
	@And("I click the Search button")
	public void iClickSearchButton() {
		this.searchingooglepage.Search.click();
	}

	/** null
	 */
	@Inject
	public stepDefsWhen(final Driver driver, final ClientDetailPage clientdetailpage) {
		this.driver = driver;
		this.driver.init();
		this.clientdetailpage = clientdetailpage;
	}

}