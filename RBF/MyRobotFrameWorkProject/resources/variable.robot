*** Settings ***
Documentation    This is containing all the variables
Library    SeleniumLibrary
Library    Collections


*** Variables ***
${url}          https://www.saucedemo.com/v1/index.html
${user_name}    standard_user
${password}     secret_sauce
${login_assertion}    Products
${remove_text}    REMOVE
${browser}    Chrome

