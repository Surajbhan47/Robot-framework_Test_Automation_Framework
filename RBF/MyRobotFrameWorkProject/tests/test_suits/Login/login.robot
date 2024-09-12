*** Settings ***
Documentation    To check the login page with valid credentials
Library    SeleniumLibrary
Library    Collections
Library    DataDriver
Library    ../../../library/Hello.py
Resource    ../../../resources/keywords.robot


*** Test Cases ***
Check The login with valid credentials
    [Tags]    SMOKE
    Launch the page
    Enter the username
    Verify the login
    hello_day

Adding the item into the cart
    [Tags]    Regression
    Launch the page
    Enter the username
    Verify the login
    Click on the desired products
    Click on add to cart btn

