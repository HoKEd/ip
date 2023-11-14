package cinnamontest.stepdefs;

import com.google.inject.Inject;
import com.nttdata.cinnamon.driver.Driver;
import cinnamontest.pages.SearchInGooglePage;


public class stepDefsThen extends BaseStep{ 
	private final SearchInGooglePage searchingooglepage;

	private final Driver driver;


	/** null
	 */
	@Inject
	public stepDefsThen(final Driver driver, final SearchInGooglePage searchingooglepage) {
		this.driver = driver;
		this.driver.init();
		this.searchingooglepage = searchingooglepage;
	}

}