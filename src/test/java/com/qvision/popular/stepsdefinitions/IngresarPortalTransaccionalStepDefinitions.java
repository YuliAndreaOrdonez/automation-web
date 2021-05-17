package com.qvision.popular.stepsdefinitions;

import com.qvision.popular.steps.IngresarPortalTransaccionalSteps;

import java.util.List;
import java.util.Map;
import cucumber.api.DataTable;

import io.cucumber.java.es.Cuando;
import io.cucumber.java.es.Dado;
import io.cucumber.java.es.Entonces;
import org.junit.Assert;
import org.openqa.selenium.By;

import net.serenitybdd.core.pages.PageObject;
import net.thucydides.core.annotations.Steps;

public class IngresarPortalTransaccionalStepDefinitions extends PageObject {
	
	@Steps
	IngresarPortalTransaccionalSteps loginTPSteps;
	
	@Dado("<Que ingreso al protal transaccional del banco$")
	public void IngresarAlPortalT() {
		loginTPSteps.abrirNavegador();
	}
	@Cuando("<Inicio sesion en el Portal Transaccional$")
	public void InicioSesionPortalT(DataTable arg1) {
		List<Map<String, String>> listData = arg1.asMaps(String.class, String.class);
		loginTPSteps.iniciarSesionPT(listData.get(0).get("usuario"), listData.get(0).get("contraseña"));
		}
	@Entonces("<Valido la sesion en el portal transaccional$")
	public void validoIngreso() {
		loginTPSteps.validarIngresoPT();
		Assert.assertEquals("", getDriver().findElement(By.id("")).getText());
	}

}
