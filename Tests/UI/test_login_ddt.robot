*** Settings ***
Library    SeleniumLibrary
Library    DataDriver    file=../TestData/login_data.xlsx    sheet_name=Sheet1
Test Template    Login With Credentials




*** Keywords ***
Login With Credentials
    [Arguments]    ${username}    ${password}    ${expected_result}

    Open Browser    https://automationexercise.com    chrome
    Input Text      id=username    ${username}
    Input Text      id=password    ${password}
    Click Button    id=login

    Run Keyword If    '${expected_result}'=='success'
    ...    Page Should Contain    Dashboard

    Run Keyword If    '${expected_result}'=='failure'
    ...    Page Should Contain    Invalid credentials

    Close Browser

*** Test Cases ***
