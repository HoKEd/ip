package cinnamontest.stepdefs;

import com.google.inject.Inject;
import com.nttdata.cinnamon.driver.Driver;
import io.cucumber.java.en.When;
import io.cucumber.java.en.And;


public class stepDefsWhen extends BaseStep{ 
	private final SearchInGooglePage searchingooglepage;

	private final Driver driver;


	@When("I complete the Buscar field with "test"")
	public void iCompleteBuscarFieldWith() {
		
	}

	@And("I click the Buscar con Google button")
	public void iClickBuscarConGoogleButton() {
		
	}

}