package com.qvision.popular.pages;

import org.openqa.selenium.WebElement;

import com.qvision.popular.utils.Esperas;

import net.serenitybdd.core.annotations.findby.FindBy;
import net.serenitybdd.core.pages.PageObject;

import net.thucydides.core.annotations.DefaultUrl;

@DefaultUrl("url")
public class IngresarPortalTransaccionalPage extends PageObject {
	Esperas esperaExpl;
	
	@FindBy(name = "USER")
	WebElement txtusuario;
	
	@FindBy(name ="PASS")
	WebElement txtpass;
	
	@FindBy(xpath = "")
	WebElement check;
	
	@FindBy(id = "btn")
	WebElement btnContinuar;
	
	public void iniciarSesionPT(String usuario, String contraseña) {
		txtusuario.sendKeys(usuario, contraseña);
		check.click();
		}
	
	public void ValidarIngresoPT() {
		btnContinuar.click();
		esperaExpl.esperaExpEleVisible("idElemento", 8000);
		}

}
