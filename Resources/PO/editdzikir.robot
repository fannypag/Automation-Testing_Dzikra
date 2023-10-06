*** Settings ***
Library    Selenium2Library
Resource   login.robot

*** Keywords ***
Login Edit Success
    Begin Browser         ${url}    ${browser}
    Begin Web test        ${delay}
    Input Username        ${username}
    Input Password        ${password}
    Click Login Button
    Verify Login Success 

Navigate Menu Dzikir
    Click Element    xpath:/html/body/div/div[2]/div[1]/div[3]/a
    Element Text Should Be    xpath://*[@id="root"]/div[2]/div[2]/div/div[1]/p    Dzikir

Click other button
    Sleep    3
    Click Button    xpath://*[@id="root"]/div[2]/div[2]/div/div[2]/div[1]/div/div/button[1]
    Sleep    3
    Click Element    xpath://*[@id="root"]/div[2]/div[2]/div/div[2]/div[2]/div[1]/table/tbody/tr[1]/td[5]/div/button
    Click Element    xpath:/html/body/div[2]/div[3]/ul/li[2] 
    Element Text Should Be    xpath://*[@id="root"]/div[2]/div[2]/form/div/div[3]/div[1]/p    Edit Dzikir

Edit Dzikir  
    # nama dzikir  
    [Arguments]    ${editnamadzikir}    ${editnamabacaan}    ${editpengulangan}    
    Press Keys    name:dzikirName    CTRL+A+DELETE
    Input Text     name:dzikirName    ${editnamadzikir}
    Press Keys    None    \ue00f
    Sleep    1
    Click Element    xpath://*[@id="root"]/div[2]/div[2]/form/div/div[3]/div[5]/div[1]/table/tbody/tr/td[6]/div/button
    Press Keys    xpath://*[@id="root"]/div[2]/div[2]/form/div/div[3]/div[5]/div[1]/table/tbody/tr/td[6]/div/button    //9
    Click Element    xpath:/html/body/div[2]/div[3]/ul/li[1]
    Element Should Contain    xpath://*[@id="root"]/div[2]/div[2]/form/div/div[3]/div[1]/p    Edit Bacaan Dzikir
    Press Keys    None    \ue00e 
    Press Keys    name:dzikirDetails[0].doaName    CTRL+A+DELETE
    Input Text     name:dzikirDetails[0].doaName    ${editnamabacaan}
    Press Keys    None    \ue00f
    Sleep    2
    Press Keys    name:dzikirDetails[0].repeat    CTRL+A+DELETE
    Input Text     name:dzikirDetails[0].repeat    ${editpengulangan}
    Press Keys    None    \ue00f
    Sleep    1
    Click Element   xpath://*[@id="root"]/div[2]/div[2]/form/div/div[3]/div[9]/div/div/div/button[2]

Verify Edit Dzikir Success
    Wait until element is visible    xpath://div[contains(@class, 'Toastify__toast-body')]
    Element Text Should Be     xpath://div[contains(@class, 'Toastify__toast-body')]    Data bacaan dzikir berhasil diperbarui! 
    Click Button    xpath://*[@id="root"]/div[2]/div[2]/form/div/div[3]/div[6]/div/div/div/button[2] 
    Wait until element is visible    xpath://div[contains(@class, 'Toastify__toast-body')]
    Element Text Should Be     xpath://div[contains(@class, 'Toastify__toast-body')]    Data Berhasil Diedit
    