*** Settings ***
Library    Selenium2Library

*** Keywords ***
Begin Web Test
    [Arguments]    ${delay}
    Maximize Browser Window
    Set Selenium Speed         ${delay}
    Title Should Be            Web Admin Dzikra

Begin Browser
    [Arguments]        ${url}    ${browser}
    Open Browser       ${url}    ${browser}

Input Username
    [Arguments]    ${username}
    Input Text     name:username    ${username}

Input Password
    [Arguments]    ${password}
    Input Text     name:password    ${password}

Click Login Button
    Click Element    //button[@type="submit" and contains(text(), "Login")]

Verify Login Success
    Sleep    2
    Element Should Be Visible   xpath:/html/body/div/div[2]/div[1]/div[2]/a/span    Dashboard

Error Alert Should Show
    Wait Until Element Is Visible    xpath:/html/body/div/div/div/div/div[1]/div[2]
    Element Text Should Be           xpath:/html/body/div/div/div/div/div[1]/div[2]       Login Gagal!