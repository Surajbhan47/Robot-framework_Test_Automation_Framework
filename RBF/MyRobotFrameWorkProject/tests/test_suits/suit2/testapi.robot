*** Settings ***
Library    Collections
Library    RequestsLibrary

*** Variables ***

${base_url}     https://rahulshettyacademy.com
${Book_id}
${book_name}    Learn Appium Automation with Java


*** Test Cases ***

Play around the dictionary
    &{data}=    Create Dictionary    name=surajbhan    course=robotframework    company=capgemini
    Log    ${data}
    Dictionary Should Contain Key    ${data}    name
    Log    ${data}[name]
    ${value}=    Get From Dictionary    ${data}    course
    Log    ${value}


Add book into library database
    [Tags]    API
    &{data_payload}=    Create Dictionary    name=${book_name}   isbn=if    aisle=46    author=Suraj
    ${response}=    POST    ${base_url}/Library/Addbook.php    json=${data_payload}    expected_status=200
    Log    ${response.json()}
    Dictionary Should Contain Key    ${response.json()}    ID
    ${Book_id}=    Get From Dictionary    ${response.json()}    ID
    Set Global Variable    ${Book_id}
    Log       ${Book_id}
    Should Be Equal As Strings    	successfully added    ${response.json()}[Msg]
    Status Should Be    200    ${response}

Get the Book which is added
    [Tags]    API
    ${get_response}=    GET    ${base_url}/Library/GetBook.php?    params= ID=${Book_id}    expected_status=200
    Log    ${get_response.json()}
    Should Be Equal As Strings    ${book_name}    ${get_response.json()[0]['book_name']}

Delete the added book
    [Tags]    API
    ${json_payload}=    Create Dictionary    ID=${Book_id}
    ${response}=    DELETE      ${base_url}/Library/DeleteBook.php    json=${json_payload}
    Log    ${response.json()}
    Should Be Equal As Strings    book is successfully deleted       ${response.json()}[msg]
