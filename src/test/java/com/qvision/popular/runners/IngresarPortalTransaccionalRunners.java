package com.qvision.popular.runners;

import org.junit.runner.RunWith;

import io.cucumber.junit.CucumberOptions;
import io.cucumber.junit.CucumberOptions.SnippetType;
import net.serenitybdd.cucumber.CucumberWithSerenity;

@RunWith(CucumberWithSerenity.class)
@CucumberOptions(features = "src/test/resources/com/qvision/popular/features", glue = "com.qvision.popular.stepsdefinitions", snippets = SnippetType.CAMELCASE)
public class IngresarPortalTransaccionalRunners {

}
