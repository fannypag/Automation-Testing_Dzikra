*** Settings ***
Library    Selenium2Library
Library    XML
Resource   login.robot
Resource    addDailymisi.robot


*** Keywords ***
Login Delete Butir Daily Misi Success
    Begin Browser         ${url}    ${browser}
    Begin Web test        ${delay}  
    Input Username        ${username}
    Input Password        ${password}
    Click Login Button
    Sleep    2
    Verify Login Success 

Navigate Go To Menu Misi For Delete
    Click Element    xpath://*[@id="root"]/div[2]/div[1]/div[5]/a
    Element Text Should Be    xpath://*[@id="root"]/div[2]/div[2]/div/div[2]/div[1]/p    Database Misi

Click others button
    Sleep    2
    Click Element    xpath:/html/body/div/div[2]/div[2]/div/div[2]/div[2]/div[1]/table/tbody/tr[1]/td[7]/div/button
    Click Element    xpath://*[@id="simple-menu"]/div[3]/ul/li[2]
    Element Text Should Be   xpath:/html/body/div/div[2]/div[2]/div/div[3]/div/p    Edit Daily Mission
    Click Element    xpath:/html/body/div/div[2]/div[2]/div/div[3]/form/div[4]/div[1]/table/tbody/tr/td[5]/div/button
    Click Element    xpath:/html/body/div[2]/div[3]/ul/li[3]

Verify delete butir daily misi success
    Element Text Should Be    xpath:/html/body/div[3]/div/div/div[1]/div/p    Konfirmasi
    Click Button    xpath:/html/body/div[3]/div/div/div[3]/div/div/div/button[2]
    Element Text Should Be    xpath:/html/body/div/div[2]/div[2]/div/div[3]/div/p    Edit Daily Mission

    Press Keys    None    \ue00f
    Sleep    1
    Click Button    xpath:/html/body/div/div[2]/div[2]/div/div[3]/form/div[5]/div/div/div/button[2]
    Wait until element is visible    xpath://div[contains(@class, 'Toastify__toast-body')]
    Element Text Should Be     xpath://div[contains(@class, 'Toastify__toast-body')]    Data berhasil disimpan