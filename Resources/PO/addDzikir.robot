*** Settings ***
Library  Selenium2Library
Resource    login.robot

*** Keywords ***
Login Add Dzikir Success
    Begin Browser         ${url}    ${browser}
    Begin Web test        ${delay}
    Input Username        ${username}
    Input Password        ${password}
    Click Login Button
    Verify Login Success

Navigate To Menu Dzikir
    Click Element    xpath:/html/body/div/div[2]/div[1]/div[3]/a
    Element Text Should Be    xpath://*[@id="root"]/div[2]/div[2]/div/div[1]/p    Dzikir
    Click Button    xpath:/html/body/div/div[2]/div[2]/div/div[2]/div[1]/div/div/button[2] 
    Element Text Should Be    xpath://*[@id="root"]/div[2]/div[2]/form/div/div[3]/div[1]/p    Tambah Dzikir

Add Dzikir
    [Arguments]    ${namadzikir}    
    Input Text    name:dzikirName    ${namadzikir}
    Click Element    xpath://*[@id="root"]/div[2]/div[2]/form/div/div[3]/div[3]/div[1]/div/div[2]/div[2]
    Click Element    xpath://*[@id="react-select-2-option-0"]
    Sleep    2

Add Item Dzikir
    Click Button    xpath://*[@id="root"]/div[2]/div[2]/form/div/div[3]/div[4]/div/button
    Element Text Should Be    xpath://*[@id="root"]/div[2]/div[2]/form/div/div[3]/div[1]/p    Tambah Bacaan Dzikir
    [Arguments]    ${namabacaan}    ${arab}    ${transliterasi}    ${translasi}    ${pengulangan}    ${referensi}
    Input Text    name:dzikirDetails[0].doaName    ${namabacaan} 
    Input Text    name:dzikirDetails[0].arabicText    ${arab}
    Input Text    name:dzikirDetails[0].latinText    ${transliterasi}
    Input Text    name:dzikirDetails[0].translate    ${translasi} 
    Input Text    name:dzikirDetails[0].repeat    ${pengulangan}
    Input Text    name:dzikirDetails[0].referensi    ${referensi}
    Press Keys    None    \ue00f
    Sleep    1
    Click Button    xpath://*[@id="root"]/div[2]/div[2]/form/div/div[3]/div[9]/div/div/div/button[2]
    
Verify Add Dzikir Success
    Wait until element is visible    xpath://div[contains(@class, 'Toastify__toast-body')]
    Element Text Should Be     xpath://div[contains(@class, 'Toastify__toast-body')]    Data bacaan dzikir berhasil ditambahkan! 
    Click Button    xpath://*[@id="root"]/div[2]/div[2]/form/div/div[3]/div[6]/div/div/div/button[2] 
    Wait until element is visible    xpath://div[contains(@class, 'Toastify__toast-body')]
    Element Text Should Be     xpath://div[contains(@class, 'Toastify__toast-body')]    Data Berhasil Ditambah     



    