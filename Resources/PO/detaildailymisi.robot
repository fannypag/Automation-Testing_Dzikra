*** Settings ***
Library    Selenium2Library
Resource   login.robot
Resource    addDailymisi.robot


*** Keywords ***
Login Detail Daily Misi Success
    Begin Browser         ${url}    ${browser}
    Begin Web test        ${delay}  
    Input Username        ${username}
    Input Password        ${password}
    Click Login Button
    Sleep    2
    Verify Login Success 

Navigate Go To Menu Misi
    Click Element    xpath://*[@id="root"]/div[2]/div[1]/div[5]/a
    Element Text Should Be    xpath://*[@id="root"]/div[2]/div[2]/div/div[2]/div[1]/p    Database Misi

Click others button
    Sleep    2
    Click Element    xpath:/html/body/div/div[2]/div[2]/div/div[2]/div[2]/div[1]/table/tbody/tr[4]/td[7]/div/button
    Click Element    xpath://*[@id="simple-menu"]/div[3]/ul/li[1]
    Element Text Should Be   xpath:/html/body/div/div[2]/div[2]/div/div[3]/div/p    Detail Daily Mission

Verify detail daily misi success
    [Arguments]    ${title}
    Get Element Attribute    name:missionName    ${title}

    