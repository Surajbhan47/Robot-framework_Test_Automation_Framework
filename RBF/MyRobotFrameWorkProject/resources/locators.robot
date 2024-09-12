*** Settings ***
Documentation    This is containing all the locators
Library    SeleniumLibrary
Library    Collections


*** Variables ***
${user_locator}    id:user-name
${password_locator}    id:password
${login_btn_locator}    xpath://input[@value='LOGIN']
${login_assertion_locator}     xpath://div[text()='Products']
${product_locator}    xpath://*[contains(text(), 'Sauce Labs Bolt T-Shirt')]
${add_btn_locator}    xpath://*[contains(text(), 'ADD TO CART')]
${remove_locator}    xpath://*[contains(text(), 'REMOVE')]

