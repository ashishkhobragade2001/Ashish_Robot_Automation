*** Settings ***
Library    SeleniumLibrary

*** Keywords ***

Click Element With Log
    [Arguments]    ${locator}    ${element_name}
    Wait Until Element Is Visible    ${locator}    10s
    Log    Clicking on ${element_name}
    Click Element    ${locator}

Input Text With Log
    [Arguments]    ${locator}    ${text}    ${element_name}
    Wait Until Element Is Visible    ${locator}    10s
    Log    Entering text into ${element_name}
    Input Text    ${locator}    ${text}

Element Should Be Visible
    [Arguments]    ${locator}    ${element_name}
    Wait Until Element Is Visible    ${locator}    10s
    Log    Verified ${element_name} is visible
