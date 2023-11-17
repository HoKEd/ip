package com.everis.stepsdef;

import org.openqa.selenium.By;
import com.everis.scrapping.ByScrap;
import org.openqa.selenium.WebDriver;


public class SearchInGooglePage{ 
	public static By Buscar = ByScrap.closestFieldWithLabel("Buscar");

	public static WebDriver driver;

	public static By Buscar260 = ByScrap.textInside("Buscar");


}