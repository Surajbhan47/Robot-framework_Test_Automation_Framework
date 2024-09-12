*** Settings ***
Documentation    To check the login page with valid credentials
Library    SeleniumLibrary
Library    Collections
Library    DataDriver    file=../../../Utils/data.csv    encoding=UTF_8    dialect=unix
Library    ../../../library/Hello.py
Resource    ../../../resources/keywords.robot
Test Template    Check The login with valid credentials


*** Test Cases ***
Login with user ${username} and password ${password}    default_user    default_pass


*** Keywords ***
Check The login with valid credentials
    [Tags]    SMOKE
    [Arguments]    ${username}    ${password}
    Launch the page
    Enter the username    ${username}    ${password}
    Verify the login    
    hello_day

