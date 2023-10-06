*** Settings ***
Library    Selenium2Library
Resource   login.robot
Resource    doa.robot
Resource    detaildoa.robot

*** Keywords ***
Login Detail Success
    Begin Browser         ${url}    ${browser}
    Begin Web test        ${delay}  
    Input Username        ${username}
    Input Password        ${password}
    Click Login Button
    Sleep    2
    Verify Login Success 

Navigate Go To Menu Doa
    Click Element  xpath://*[@id="root"]/div[2]/div[1]/div[4]/a
    Element Should Contain    xpath:/html/body/div/div[2]/div[2]/div/div[2]/div[1]/p    Doa

Click others button
    Click Element    xpath://*[@id="root"]/div[2]/div[2]/div/div[2]/div[2]/div[1]/table/tbody/tr[1]/td[5]/div
    Click Element    xpath://*[@id="simple-menu"]/div[3]/ul/li[1]
    Element Should Contain    xpath://*[@id="root"]/div[2]/div[2]/div/div[3]/div/p    Detail Doa

Verify detail success
    [Arguments]    ${title}
    Get Element Attribute    name:doaName    ${title}

    