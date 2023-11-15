package com.everis.stepsdef;

import org.openqa.selenium.By;
import com.everis.scrapping.ByScrap;
import org.openqa.selenium.WebDriver;


public class SendContactMessagePage{ 
	public static By SendMessage = ByScrap.textInside("SendMessage");

	public static WebDriver driver;

	public static By Phone = ByScrap.closestFieldWithLabel("Phone");


}