package com.groot;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;

import static com.codeborne.selenide.Condition.text;
import static com.codeborne.selenide.Selenide.$;
import static com.codeborne.selenide.Selenide.open;

public class GoogleSearch {
    // Google search feature
    @Given("^I am on Google homepage$")
    public void i_am_on_Google_homepage() {
        open("https://www.google.com");
    }

    @When("^I search for cactus flower$")
    public void i_search_for_cactus_flower() {
        $(By.name("q")).setValue("cactus flowers").pressEnter();
    }

    @When("^I click on images$")
    public void i_click_on_images() {
        $(By.linkText("Images")).pressEnter();
    }

    @Then("^I should be shown images of cactus flowers$")
    public void i_should_be_shown_images_of_cactus_flowers() {
        $(".hdtb-mitem.hdtb-msel.hdtb-imb").shouldHave(text("Images"));
    }

}
