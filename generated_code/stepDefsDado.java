package cinnamontest.stepdefs;

import com.google.inject.Inject;
import com.nttdata.cinnamon.driver.Driver;
import cinnamontest.pages.ClientDetailPage;
import io.cucumber.java.es.Dado;
import io.cucumber.java.es.Y;
import cinnamontest.pages.SendContactMessagePage;
import cinnamontest.pages.SearchInGooglePage;
import cinnamontest.pages.LookMyOrdersPage;
import cinnamontest.pages.MakeOrderPage;


public class stepDefsDado extends BaseStep{ 
	private final MakeOrderPage makeorderpage;

	private final SearchInGooglePage searchingooglepage;

	private final Driver driver;

	private final ClientDetailPage clientdetailpage;

	private final SendContactMessagePage sendcontactmessagepage;

	private final LookMyOrdersPage lookmyorderspage;


	/** Method autogenerated by iBDD tool
	 *	 No code could be implemented for this operation.
	 *	 Please retrain the AI model to support it or add code manually.
	 */
	@Given("^the following text is parsed:$")
	public void followingTextIsParsed() {
		//TODO It was not possible to generate code for this operation
	}

	/** null
	 */
	@Inject
	public stepDefsDado(final Driver driver, final ClientDetailPage clientdetailpage) {
		this.driver = driver;
		this.driver.init();
		this.clientdetailpage = clientdetailpage;
	}

	/** Method autogenerated by iBDD tool
	 *	 No code could be implemented for this operation.
	 *	 Please retrain the AI model to support it or add code manually.
	 */
	@And("^go to the \"([^\"]*)\"$")
	public void goTo(String aValue) {
		//TODO It was not possible to generate code for this operation
	}

	/** Method autogenerated by iBDD tool
	 *	 No code could be implemented for this operation.
	 *	 Please retrain the AI model to support it or add code manually.
	 */
	@Given("^I have Cucumber's home dir defined in CUCUMBER_HOME$")
	public void iHaveCucumbersHomeDirDefinedInCUCUMBERHOME() {
		//TODO It was not possible to generate code for this operation
	}

	/** Method autogenerated by iBDD tool
	 *	 No code could be implemented for this operation.
	 *	 Please retrain the AI model to support it or add code manually.
	 */
	@Given("^Open firefox browser$")
	public void openFirefoxBrowser() {
		//TODO It was not possible to generate code for this operation
	}

	/** Method autogenerated by iBDD tool
	 *	 No code could be implemented for this operation.
	 *	 Please retrain the AI model to support it or add code manually.
	 */
	@Given("^a \"([^\"]*)\", "native" "root" parser$")
	public void enParser(String aValue) {
		//TODO It was not possible to generate code for this operation
	}

	/** Method autogenerated by iBDD tool
	 *	 No code could be implemented for this operation.
	 *	 Please retrain the AI model to support it or add code manually.
	 */
	@Given("^I open \"([^\"]*)\" browser$")
	public void iOpenBrowser(String aValue) {
		//TODO It was not possible to generate code for this operation
	}

}