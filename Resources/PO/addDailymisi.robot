*** Settings ***
Library  Selenium2Library
Resource    login.robot
Resource    ../../Variables/Login_Var.robot

*** Keywords ***
Login Add Daily Misi Success
    Begin Browser         ${url}    ${browser}
    Begin Web test        ${delay}
    Input Username        ${username}
    Input Password        ${password}
    Click Login Button
    Verify Login Success

Navigate To Menu Misi
    Click Element    xpath://*[@id="root"]/div[2]/div[1]/div[5]/a
    Element Text Should Be    xpath://*[@id="root"]/div[2]/div[2]/div/div[2]/div[1]/p    Database Misi
    Click Button    xpath://*[@id="root"]/div[2]/div[2]/div/div[2]/div[1]/div/div/div[2]/button
    Click Element    xpath://*[@id="demo-customized-menu"]/div[3]/ul/li[1]
    Element Text Should Be    xpath://*[@id="root"]/div[2]/div[2]/div/div[3]/div/p    Tambah Daily Mission

Add Daily Misi
    [Arguments]    ${namamisi}    ${deskripsi}    ${tanggalakt}        
    Input Text    name:missionName    ${namamisi}
    Input Text    xpath:/html/body/div/div[2]/div[2]/div/div[3]/form/div[1]/div[2]/div/div[1]/input    ${deskripsi}
    Input Text     name:activation_date    ${tanggalakt}   
    Click Element    xpath://*[@id="root"]/div[2]/div[2]/div/div[3]/form/div[3]/div/button
    Element Text Should Be    xpath://*[@id="root"]/div[2]/div[2]/div/div[3]/div/p    Tambah Butir Daily Misi
    Sleep    2

Add Item Daily Misi
    Click Element    xpath://*[@id="root"]/div[2]/div[2]/div/div[3]/form/div[1]/div[1]/div/div[1]/div/div[2]/div[2]
    Click Element    xpath:/html/body/div/div[2]/div[2]/div/div[3]/form/div[1]/div[1]/div/div[1]/div[2]/div/div[1]
    [Arguments]    ${target}    ${keterangan}    ${rewardXP}    ${rewardDZ}    
    Input Text    name:target    ${target} 
    Input Text    xpath:/html/body/div/div[2]/div[2]/div/div[3]/form/div[2]/div[1]/div/div[1]/textarea    ${keterangan}
    Click Element    xpath://*[@id="root"]/div[2]/div[2]/div/div[3]/form/div[1]/div[2]/div/div[2]/div/div[1]/div/div[2]/div[2]
    Click Element    xpath:/html/body/div/div[2]/div[2]/div/div[3]/form/div[1]/div[2]/div/div[2]/div/div[1]/div[2]/div/div[2]
    Click Element    xpath://*[@id="root"]/div[2]/div[2]/div/div[3]/form/div[2]/div[2]/div[1]/label/span
    Input Text    name:rewardXP    ${rewardXP} 
    Click Element    xpath:/html/body/div/div[2]/div[2]/div/div[3]/form/div[2]/div[2]/div[2]/label/span 
    Input Text    name:rewardDziko    ${rewardDZ}     
    Sleep    1
    Click Button    xpath://*[@id="root"]/div[2]/div[2]/div/div[3]/form/div[3]/div/div/div/button[2]
    
Verify Add Daily Misi Success
    Wait until element is visible    xpath://div[contains(@class, 'Toastify')]
    Element Text Should Be     xpath://div[contains(@class, 'Toastify')]    Data butir misi berhasil ditambahkan! 
    Press Keys    None    \ue00f
    Sleep    1
    Click Button    xpath://*[@id="root"]/div[2]/div[2]/div/div[3]/form/div[5]/div/div/div/button[3] 
    Wait until element is visible    xpath://div[contains(@class, 'Toastify')]
    Element Text Should Be     xpath://div[contains(@class, 'Toastify')]    Data berhasil disimpan    
