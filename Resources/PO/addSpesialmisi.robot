# Program    : Tambah Spesial Misi_PO
# Deskripsi  : Menambahkan spesial misi valid
# Nama       : Fanny Putria Aguutsina
# Tanggal    : 27 September 2023
# Compiler   : Visual Studio Code
 

*** Settings ***
Library    Selenium2Library
Library    XML
Resource    login.robot

*** Keywords ***
Login Add Spesial Misi Success
    Begin Browser         ${url}    ${browser}
    Begin Web test        ${delay}
    Input Username        ${username}
    Input Password        ${password}
    Click Login Button
    Verify Login Success

Navigate To Menu Misi
    Click Element    #masuk menu misi  
    ...    xpath://*[@id="root"]/div[2]/div[1]/div[5]/a
    Element Text Should Be    #validasi berada dihalaman menu misi  
    ...    xpath://*[@id="root"]/div[2]/div[2]/div/div[2]/div[1]/p    Database Misi
    Click Button    #Sentuh button tambah
    ...    xpath://*[@id="root"]/div[2]/div[2]/div/div[2]/div[1]/div/div/div[2]/button
    Click Element    #Pilih spesial misi
    ...    xpath:/html/body/div[2]/div[3]/ul/li[2]
    Element Text Should Be    #validasi berada dihalaman tambah spesial misi    
    ...    xpath:/html/body/div/div[2]/div[2]/div/div[3]/div/p    Tambah Special Mission

Add Spesial Misi
    [Arguments]    ${namamisi}    ${durasimisi}    ${deskripsi}    ${tgl_aktivasi}    ${media}    ${gambar_badge}    ${namabadge}    ${deskripsi_badge}      
    Input Text    #input nama misi 
    ...    name:missionName    ${namamisi}
    Input Text    #input durasi mis    
    ...    name:totalDay    ${durasimisi}
    Input Text    #input deskripsi
    ...    xpath:/html/body/div/div[2]/div[2]/div/div[3]/form/div[1]/div[2]/div/div[1]/input    ${deskripsi}
    Input Text    #input tanggal aktivasi
    ...    name:activation_date    ${tgl_aktivasi}  
    Sleep    1
    Choose File    #input gambar/banner misi
    ...    name:banner    ${media}
    Choose File    #input gambar badge
    ...    name:badgeImage    ${gambar_badge}
    Press Keys    None    \ue00f
    Sleep    1
    Input Text    #input nama badge
    ...    name:badgeName    ${namabadge}
    Input Text    #input deskripdi badge
    ...    name:badgeDescription    ${deskripsi_badge}
    Sleep    #proses manual mengatur warna banner misi    
    ...    15    
    Click Button    #Click button tambah butir misi
    ...    xpath:/html/body/div/div[2]/div[2]/div/div[3]/form/div[6]/div/button

Add Item Spesial Misi
    Element Text Should Be    #validasi berada dihalaman tambah butir spesial misi
    ...    xpath:/html/body/div/div[2]/div[2]/div/div[3]/div/p
    [Arguments]    ${target}    ${keterangan}    ${reward_XP}    ${reward_DZ}    
    Click Element    #Click dropdown aktivitas
    ...    xpath:/html/body/div/div[2]/div[2]/div/div[3]/form/div[1]/div[1]/div/div[1]/div/div[2]/div[2]
    Click Element    #pilih dropdown (baca quran)
    ...    xpath:/html/body/div/div[2]/div[2]/div/div[3]/form/div[1]/div[1]/div/div[1]/div[2]/div/div[1]
    Input Text    #input jumlah target (angka)       
    ...    name:target    ${target} 
    Click Element    #click dropdown pilih data
    ...    xpath:/html/body/div/div[2]/div[2]/div/div[3]/form/div[1]/div[2]/div/div[2]/div/div[1]/div/div[2]/div[2]
    Click Element    #click pilihan dropdown (halaman)    
    ...    xpath:/html/body/div/div[2]/div[2]/div/div[3]/form/div[1]/div[2]/div/div[2]/div/div[1]/div[2]/div/div[2]
    Input Text    #input keterangan       
    ...    xpath:/html/body/div/div[2]/div[2]/div/div[3]/form/div[2]/div[1]/div/div[1]/textarea    ${keterangan}
    Click Element    #click button xp    
    ...    xpath:/html/body/div/div[2]/div[2]/div/div[3]/form/div[2]/div[2]/div[1]/label/span
    Input Text    #input reward xp
    ...    name:rewardXP    ${reward_XP}
    Click Element    #click reward dzikro
    ...    xpath:/html/body/div/div[2]/div[2]/div/div[3]/form/div[2]/div[2]/div[2]/label/span
    Input Text    #input reward dzikro
    ...    name:rewardDziko    ${reward_DZ}
    Click Button    xpath:/html/body/div/div[2]/div[2]/div/div[3]/form/div[3]/div/div/div/button[2]
    
Verify Add Spesial Misi Success
    Wait until element is visible    xpath://div[contains(@class, 'Toastify')]
    Element Text Should Be     xpath://div[contains(@class, 'Toastify')]    Data butir misi berhasil ditambahkan! 
    Press Keys    None    \ue00f
    Sleep    1
    Click Button    xpath://*[@id="root"]/div[2]/div[2]/div/div[3]/form/div[5]/div/div/div/button[3] 
    Wait until element is visible    xpath://div[contains(@class, 'Toastify')]
    Element Text Should Be     xpath://div[contains(@class, 'Toastify')]    Data berhasil disimpan    
