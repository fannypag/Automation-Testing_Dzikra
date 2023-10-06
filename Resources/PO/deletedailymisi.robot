*** Settings ***
Library    Selenium2Library
Resource   login.robot

*** Keywords ***
Login Delete Daily Misi Success
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

Click Others Button Daily Misi
    Click Button    xpath:/html/body/div/div[2]/div[2]/div/div[2]/div[2]/div[1]/table/tbody/tr[1]/td[7]/div/button
    Click Element    xpath:/html/body/div[2]/div[3]/ul/li[3]
    Element Should Contain    xpath:/html/body/div[3]/div/div/div[1]/div/p    Konfirmasi
    Click Button    xpath:/html/body/div[3]/div/div/div[3]/div/div/div/button[2]  

Verify Delete Daily Misi Success
    Wait until element is visible    xpath://div[contains(@class, 'Toastify__toast-body')]
    Element Text Should Be     xpath://div[contains(@class, 'Toastify__toast-body')]    Data Misi Berhasil Dihapus    

    