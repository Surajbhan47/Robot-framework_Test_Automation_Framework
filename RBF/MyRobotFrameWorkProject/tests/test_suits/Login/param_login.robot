*** Settings ***
Documentation    To check the login page with valid credentials
Library    SeleniumLibrary
Library    Collections
Library    ../../../library/Hello.py
Resource    ../../../resources/keywords.robot
Test Template    Check The login with valid credentials


*** Test Cases ***    username    password
Invalid Credentials    user       1234
valid Credentials    standard_user    secret_sauce
valid Credentials    performance_glitch_user    secret_sauce



*** Keywords ***
Check The login with valid credentials
    [Tags]    SMOKE
    [Arguments]    ${username}    ${password}
    Launch the page
    Enter the username    ${username}    ${password}
    Verify the login    
    hello_day

