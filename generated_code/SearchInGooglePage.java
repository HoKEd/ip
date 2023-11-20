package com.everis.stepsdef;

import org.openqa.selenium.By;
import com.everis.scrapping.ByScrap;
import org.openqa.selenium.WebDriver;


public class SearchInGooglePage{ 
	public static WebDriver driver;

	public static By Search = ByScrap.closestFieldWithLabel("Search");

	public static By Search428 = ByScrap.textInside("Search");


}