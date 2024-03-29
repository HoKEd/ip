package com.everis.stepsdef;

import cucumber.api.java.en.When;
import cucumber.api.java.en.And;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.Select;


public class stepDefsWhen{ 
	/** Method autogenerated by iBDD tool
	 *	 Code implemented with a probability of: 0.7217425955930732
	 */
	@And("^I write {string} in Your message field$")
	public void iWriteHelloWorldInYourMessageField(String Yourmessagefield) {
		WebElement obj = SendContactMessagePage.driver.findElement(SendContactMessagePage.Yourmessagefield);
		if (!Yourmessagefield.equals("")){
			obj.sendKeys(Yourmessagefield);
		}else{
			obj.sendKeys("Hello world in");
		}
	}

	/** Method autogenerated by iBDD tool
	 *	 Code implemented with a probability of: 0.6599905754280084
	 */
	@And("^write the Job title with {string}$")
	public void writeJobTitleWith(String user, String pass) {
		driver.findElement(ByScrap("user")
	}

	/** Method autogenerated by iBDD tool
	 *	 Code implemented with a probability of: 0.718760948571998
	 */
	@And("^I complete the Company with {string}$")
	public void iCompleteCompanyWith(String Company) {
		WebElement obj = SendContactMessagePage.driver.findElement(SendContactMessagePage.Company);
		if (!Company.equals("")){
			obj.sendKeys(Company);
		}else{
			obj.sendKeys("Company with NTT");
		}
	}

	/** Method autogenerated by iBDD tool
	 *	 Code implemented with a probability of: 0.660847035919089
	 */
	@And("^I write {string} in the Email address$")
	public void iWriteInEmailAddress(String user, String pass) {
		driver.findElement(ByScrap("user")
	}

	/** Method autogenerated by iBDD tool
	 *	 Code implemented with a probability of: 0.8474126984126984
	 */
	@And("^I click the Search button$")
	public void iClickSearchButton() {
		WebElement obj = SearchInGooglePage.driver.findElement(SearchInGooglePage.Search428);
		obj.click();
	}

	/** Method autogenerated by iBDD tool
	 *	 Code implemented with a probability of: 0.7292088892914863
	 */
	@And("^I choose {string} option in the Select field Label combo$")
	public void iChooseOptionInSelectFieldLabelCombo(String SelectfieldLabel) {
		WebElement obj = SendContactMessagePage.driver.findElement(SendContactMessagePage.SelectfieldLabel);
		Select selectObject = new Select(obj);
		if (!SelectfieldLabel.equals("")){
			selectObject.selectByVisibleText("Other");
		}else{
			selectObject.selectByIndex(1);
		}
	}

	/** Method autogenerated by iBDD tool
	 *	 Code implemented with a probability of: 0.6816584466722307
	 */
	@And("^I write the field First Name with the value {string}$")
	public void iWriteFieldFirstNameWithValue(String FirstName) {
		WebElement obj = SendContactMessagePage.driver.findElement(SendContactMessagePage.FirstName);
		if (!FirstName.equals("")){
			obj.sendKeys(FirstName);
		}else{
			obj.sendKeys("First Name with the");
		}
	}

	/** Method autogenerated by iBDD tool
	 *	 Code implemented with a probability of: 0.7464512471655329
	 */
	@When("^I navigate to {string}$")
	public void iNavigateTo(String url) {
		SendContactMessagePage.driver.get(url);
	}

	/** Method autogenerated by iBDD tool
	 *	 Code implemented with a probability of: 0.7369094726941182
	 */
	@When("^I complete the Search field with {string}$")
	public void iCompleteSearchFieldWith(String Search) {
		WebElement obj = SearchInGooglePage.driver.findElement(SearchInGooglePage.Search);
		if (!Search.equals("")){
			obj.sendKeys(Search);
		}else{
			obj.sendKeys("Search field with test");
		}
	}

	/** Method autogenerated by iBDD tool
	 *	 Code implemented with a probability of: 0.6560100196199231
	 */
	@When("^the following text is parsed:$")
	public void followingTextIsParsed(String following) {
		WebElement obj = LookMyOrdersPage.driver.findElement(LookMyOrdersPage.following);
		if (!following.equals("")){
			obj.sendKeys(following);
		}else{
			obj.sendKeys("following text is parsed:");
		}
	}

	/** Method autogenerated by iBDD tool
	 *	 Code implemented with a probability of: 0.7845602918586789
	 */
	@And("^I click the Send Message button$")
	public void iClickSendMessageButton() {
		WebElement obj = SendContactMessagePage.driver.findElement(SendContactMessagePage.SendMessage);
		obj.click();
	}

	/** Method autogenerated by iBDD tool
	 *	 Code implemented with a probability of: 0.7236170884447262
	 */
	@And("^I write the value {string} in Last Name$")
	public void iWriteValueInLastName(String LastName) {
		WebElement obj = SendContactMessagePage.driver.findElement(SendContactMessagePage.LastName);
		if (!LastName.equals("")){
			obj.sendKeys(LastName);
		}else{
			obj.sendKeys("LastTest in");
		}
	}

	/** Method autogenerated by iBDD tool
	 *	 Code implemented with a probability of: 0.7902136723716537
	 */
	@And("^I write the value {string} on the Phone field$")
	public void iWriteValuePhoneField(String Phone) {
		WebElement obj = SendContactMessagePage.driver.findElement(SendContactMessagePage.Phone);
		if (!Phone.equals("")){
			obj.sendKeys(Phone);
		}else{
			obj.sendKeys("123456789 on");
		}
	}

}