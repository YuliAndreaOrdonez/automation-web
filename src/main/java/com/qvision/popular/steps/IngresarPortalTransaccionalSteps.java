package com.qvision.popular.steps;

import com.qvision.popular.pages.IngresarPortalTransaccionalPage;

import net.serenitybdd.core.pages.PageObject;
import net.thucydides.core.annotations.Step;



public class IngresarPortalTransaccionalSteps extends PageObject{
	IngresarPortalTransaccionalPage  loginPT;
	
	@Step
	public void abrirNavegador() {
		loginPT.open();
		}
	
	@Step
	public void iniciarSesionPT(String usuario, String contraseña) {
		loginPT.iniciarSesionPT(usuario, contraseña);
		}
	
	
	@Step
	public void validarIngresoPT() {
		loginPT.ValidarIngresoPT();
		}
	}
