*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Locators/login_locators.robot

*** Keywords ***
Click Signin Tab
    Click Button    ${LOGIN_BUTTON}
    
Enter Username
    [Arguments]    ${username}
    Input Text    ${EMAIL_INPUT}    ${username}

Enter Password
    [Arguments]    ${password}
    Input Text    ${PASSWORD_INPUT}    ${password}

Click Login
    Click Button    ${SUBMIT_BUTTON}

Get Login Status
    ${status}=    Run Keyword And Return Status    Page Should Contain    ${LOGIN_VRF_TEXT}
    IF    ${status}
        RETURN    success
    ELSE
        RETURN    failure
    END
