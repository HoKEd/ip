package cinnamontest.stepdefs;

import com.google.inject.Inject;
import com.nttdata.cinnamon.driver.Driver;
import cinnamontest.pages.ClientDetailPage;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.And;
import cinnamontest.pages.SendContactMessagePage;


public class stepDefsGiven extends BaseStep{ 
	private final Driver driver;

	private final ClientDetailPage clientdetailpage;

	private final SendContactMessagePage sendcontactmessagepage;


	/** Method autogenerated by iBDD tool
	 *	 Code implemented with a probability of: 0.6560100196199231
	 */
	@Given("^the following text is parsed:$")
	public void followingTextIsParsed(String following) {
		this.clientdetailpage.following.setValue(following);
	}

	/** Method autogenerated by iBDD tool
	 *	 No code could be implemented for this operation.
	 *	 Please retrain the AI model to support it or add code manually.
	 */
	@Given("^a \"([^\"]*)\", "native" "root" parser$")
	public void enParser(String aValue) {
		//TODO It was not possible to generate code for this operation
	}

	/** null
	 */
	@Inject
	public stepDefsGiven(final Driver driver, final ClientDetailPage clientdetailpage) {
		this.driver = driver;
		this.driver.init();
		this.clientdetailpage = clientdetailpage;
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