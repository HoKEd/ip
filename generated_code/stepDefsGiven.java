package cinnamontest.stepdefs;

import com.google.inject.Inject;
import com.nttdata.cinnamon.driver.Driver;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.And;


public class stepDefsGiven extends BaseStep{ 
	private final SearchInGooglePage searchingooglepage;

	private final Driver driver;


	@And("go to the {string}")
	public void goTo() {
		
	}

	@Given("Open {} browser")
	public void openFirefoxBrowser() {
		
	}

	@Inject
	public void stepDefsGiven(final Driver driver, final SearchInGooglePage searchingooglepage) {
		this.driver = driver;
		this.driver.init();
		this.SearchInGooglePage = searchingooglepage;
	}

}