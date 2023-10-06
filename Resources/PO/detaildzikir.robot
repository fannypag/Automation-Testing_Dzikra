*** Settings ***
Library    Selenium2Library
Resource   login.robot
Resource    addDzikir.robot


*** Keywords ***
Login Detail Success
    Begin Browser         ${url}    ${browser}
    Begin Web test        ${delay}  
    Input Username        ${username}
    Input Password        ${password}
    Click Login Button
    Sleep    2
    Verify Login Success 

Navigate Go To Menu Dzikir
    Click Element  xpath://*[@id="root"]/div[2]/div[1]/div[3]/a
    Element Text Should Be    xpath:/html/body/div/div[2]/div[2]/div/div[1]/p    Dzikir

Click others button
    Sleep    2
    Click Element    xpath://*[@id="root"]/div[2]/div[2]/div/div[2]/div[2]/div[1]/table/tbody/tr[1]/td[5]/div/button
    Click Element    xpath:/html/body/div[2]/div[3]/ul/li[1]
    Element Text Should Be   xpath://*[@id="root"]/div[2]/div[2]/form/div/div[3]/div[1]/p    Detail Dzikir

Verify detail success
    [Arguments]    ${title}
    Get Element Attribute    name:dzikirName    ${title}

    