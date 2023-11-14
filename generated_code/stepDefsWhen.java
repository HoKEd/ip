package com.everis.stepsdef;

import cucumber.api.java.en.When;
import cucumber.api.java.en.And;
import org.openqa.selenium.WebElement;


public class stepDefsWhen{ 
	/** Method autogenerated by iBDD tool
	 *	 Code implemented with a probability of: 0.7457322229378652
	 */
	@When("^I complete the Buscar field with {string}$")
	public void iCompleteBuscarFieldWith(String Buscar) {
		WebElement obj = SearchInGooglePage.driver.findElement(SearchInGooglePage.Buscar);
		if (!Buscar.equals("")){
			obj.sendKeys(Buscar);
		}else{
			obj.sendKeys("Buscar field with test");
		}
	}

	/** Method autogenerated by iBDD tool
	 *	 Code implemented with a probability of: 0.764923520923521
	 */
	@And("^I click the Buscar con Google button$")
	public void iClickBuscarConGoogleButton() {
		WebElement obj = SearchInGooglePage.driver.findElement(SearchInGooglePage.Buscar140);
		obj.click();
	}

}