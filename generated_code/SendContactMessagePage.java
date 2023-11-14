package com.everis.stepsdef;

import org.openqa.selenium.By;
import com.everis.scrapping.ByScrap;
import org.openqa.selenium.WebDriver;


public class SendContactMessagePage{ 
	public static By SendMessage = ByScrap.textInside("SendMessage");

	public static WebDriver driver;

	public static By Yourmessagefield = ByScrap.closestFieldWithLabel("Yourmessagefield");

	public static By LastName = ByScrap.closestFieldWithLabel("LastName");

	public static By Phone = ByScrap.closestFieldWithLabel("Phone");

	public static By SelectfieldLabel = ByScrap.closestSelectWithLabel("SelectfieldLabel");

	public static By Company = ByScrap.closestFieldWithLabel("Company");


}