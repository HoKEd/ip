package com.everis.stepsdef;

import org.openqa.selenium.By;
import com.everis.scrapping.ByScrap;
import org.openqa.selenium.WebDriver;


public class SearchInGooglePage{ 
	public static By Search866 = ByScrap.textInside("Search");

	public static WebDriver driver;

	public static By Search = ByScrap.closestFieldWithLabel("Search");


}