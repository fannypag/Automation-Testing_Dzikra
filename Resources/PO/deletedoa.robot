*** Settings ***
Library    Selenium2Library
Resource   login.robot

*** Keywords ***
Login Delete Doa Success
    Begin Browser         ${url}    ${browser}
    Begin Web test        ${delay}  
    Input Username        ${username}
    Input Password        ${password}
    Click Login Button
    Sleep    2
    Verify Login Success 

Navigate Go To Menu Doa For Delete
    Click Element  xpath://*[@id="root"]/div[2]/div[1]/div[4]/a
    Element Should Contain    xpath:/html/body/div/div[2]/div[2]/div/div[2]/div[1]/p    Doa

Click Others Button Doa
    Click Button    xpath://*[@id="root"]/div[2]/div[2]/div/div[2]/div[1]/div/div/button[1]
    Click Element    xpath://*[@id="root"]/div[2]/div[2]/div/div[2]/div[2]/div[1]/table/tbody/tr[1]/td[5]/div/button
    Click Element    xpath://*[@id="simple-menu"]/div[3]/ul/li[3]
    Element Should Contain    xpath:/html/body/div[3]/div/div/div[1]/div    Konfirmasi
    Click Button    xpath:/html/body/div[3]/div/div/div[3]/div/div/div/button[2]    

Verify Delete Doa Success
    Element Should Contain    xpath://*[@id="root"]/div[2]/div[2]/div/div[2]/div[1]/p    Database Doa    

    