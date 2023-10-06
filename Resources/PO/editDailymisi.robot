*** Settings ***
Library    Selenium2Library
Resource   login.robot

*** Keywords ***
Login Edit Daily Misi Success
    Begin Browser         ${url}    ${browser}
    Begin Web test        ${delay}
    Input Username        ${username}
    Input Password        ${password}
    Click Login Button
    Verify Login Success 

Navigate Menu Misi
    Click Element    xpath://*[@id="root"]/div[2]/div[1]/div[5]/a
    Element Text Should Be    xpath://*[@id="root"]/div[2]/div[2]/div/div[2]/div[1]/p    Database Misi

Click other button
    Sleep    2
    Click Element    xpath:/html/body/div/div[2]/div[2]/div/div[2]/div[2]/div[1]/table/tbody/tr[2]/td[7]/div/button
    Click Element    xpath:/html/body/div[2]/div[3]/ul/li[2]
    Element Text Should Be    xpath:/html/body/div/div[2]/div[2]/div/div[3]/div/p    Edit Daily Mission

Edit Daily Misi 
    # nama daily misi 
    [Arguments]    ${editnamamisi}    ${editdeskripsi}    ${edittarget}    ${editketerangan}    
    Press Keys    name:missionName   CTRL+A+DELETE
    Input Text     name:missionName    ${editnamamisi}
    Press keys    xpath:/html/body/div/div[2]/div[2]/div/div[3]/form/div[1]/div[2]/div/div[1]/input    CTRL+A+DELETE
    Input Text    xpath:/html/body/div/div[2]/div[2]/div/div[3]/form/div[1]/div[2]/div/div[1]/input    ${editdeskripsi}
    
    Click Element    xpath:/html/body/div/div[2]/div[2]/div/div[3]/form/div[4]/div[1]/table/tbody/tr/td[5]/div/button
    # Press Keys    xpath://*[@id="root"]/div[2]/div[2]/form/div/div[3]/div[5]/div[1]/table/tbody/tr/td[6]/div/button    //9
    Click Element    xpath:/html/body/div[2]/div[3]/ul/li[2]
    Element Should Contain    xpath:/html/body/div/div[2]/div[2]/div/div[3]/div/p    Edit Butir Daily Misi
    Press Keys    name:target    CTRL+A+DELETE
    Input Text     name:target   ${edittarget}
    Press Keys    xpath:/html/body/div/div[2]/div[2]/div/div[3]/form/div[2]/div[1]/div/div[1]/textarea    CTRL+A+DELETE
    Input Text    xpath:/html/body/div/div[2]/div[2]/div/div[3]/form/div[2]/div[1]/div/div[1]/textarea    ${editketerangan}    
    Press Keys    None    \ue00f
    Sleep    1
    Click Element   xpath:/html/body/div/div[2]/div[2]/div/div[3]/form/div[3]/div/div/div/button[2]

Verify Edit Daily Misi Success
    Wait until element is visible    xpath://div[contains(@class, 'Toastify__toast-body')]
    Element Text Should Be     xpath://div[contains(@class, 'Toastify__toast-body')]    Data butir misi berhasil diperbarui! 
    Press Keys    None    \ue00f
    Sleep    2
    Click Button    xpath:/html/body/div/div[2]/div[2]/div/div[3]/form/div[5]/div/div/div/button[3] 
    Wait until element is visible    xpath://div[contains(@class, 'Toastify__toast-body')]
    Element Text Should Be     xpath://div[contains(@class, 'Toastify__toast-body')]    Data berhasil disimpan
    