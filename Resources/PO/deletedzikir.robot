*** Settings ***
Library    Selenium2Library
Resource   login.robot

*** Keywords ***
Login Delete Dzikir Success
    Begin Browser         ${url}    ${browser}
    Begin Web test        ${delay}  
    Input Username        ${username}
    Input Password        ${password}
    Click Login Button
    Sleep    2
    Verify Login Success 

Navigate Go To Menu Dzikir For Delete
    Click Element  xpath://*[@id="root"]/div[2]/div[1]/div[3]/a
    Element Text Should Be    xpath:/html/body/div/div[2]/div[2]/div/div[1]/p    Dzikir  

Click Others Button Dzikir
    Click Button    xpath://*[@id="root"]/div[2]/div[2]/div/div[2]/div[1]/div/div/button[1]
    Sleep    2
    Click Element    xpath://*[@id="root"]/div[2]/div[2]/div/div[2]/div[2]/div[1]/table/tbody/tr[1]/td[5]/div/button
    Click Element    xpath://*[@id="simple-menu"]/div[3]/ul/li[3]
    Element Should Contain    xpath:/html/body/div[3]/div/div/div[1]/div    Konfirmasi
    Click Button    xpath:/html/body/div[3]/div/div/div[3]/div/div/div/button[2]    

Verify Delete Dzikir Success
    Element Text Should Be    xpath:/html/body/div/div[2]/div[2]/div/div[1]/p    Dzikir 

    