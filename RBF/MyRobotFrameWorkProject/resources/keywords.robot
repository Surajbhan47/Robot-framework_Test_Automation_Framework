*** Settings ***
Documentation    This is containing all the keywords
Library    SeleniumLibrary
Resource    variable.robot
Resource    locators.robot



*** Keywords ***
Launch the page
    Create Webdriver    ${browser}
    Maximize Browser Window
    Go To    ${url}
    Sleep    1

Enter the username
#    [Arguments]    ${user_name}    ${password}    # Enable If want to run in parameterization or with csv
    Input Text    ${user_locator}    ${user_name}
    Input Text    ${password_locator}    ${password}
    Click Button    ${login_btn_locator}
    Sleep    2
    
Verify the login
    Element Text Should Be    ${login_assertion_locator}    ${login_assertion}

Click on the desired products
    Click Element    ${product_locator}

Click on add to cart btn
    Click Button    ${add_btn_locator}
    Sleep    2
    Element Text Should Be    ${remove_locator}    ${remove_text}
