*** Settings ***
Library    Selenium2Library
Resource   login.robot

*** Keywords ***
Login Success
    Begin Browser         ${url}    ${browser}
    Begin Web test        ${delay}
    Input Username        ${username}
    Input Password        ${password}
    Click Login Button
    Verify Login Success 

Navigate To Menu Doa
    Click Element  xpath://*[@id="root"]/div[2]/div[1]/div[4]/a
    Element Should Contain    xpath:/html/body/div/div[2]/div[2]/div/div[2]/div[1]/p    Doa
    Click Button   xpath://*[@id="root"]/div[2]/div[2]/div/div[2]/div[1]/div/div/button[2] 
    Element Should Contain    xpath://*[@id="root"]/div[2]/div[2]/div/div[1]/p    Doa

Add Doa  
    # nama doa  
    [Arguments]    ${namadoa}    ${arab}        ${transliterasi}    ${translasi}    ${referensi}
    Input Text     name:doaName    ${namadoa}
    Click Element    xpath://*[@id="root"]/div[2]/div[2]/div/div[3]/form/div[2]/div[1]/div/div[1]/div[2]
    Click Element        xpath://*[@id="react-select-2-option-0"]
    Sleep            2
    Input Text     name:arabicText    ${arab}    
    Input Text     name:latinText    ${transliterasi}
    Input Text     name:translate    ${translasi}
    Input Text     name:referensi    ${referensi}
    Press Keys    None    \ue00f
    Sleep    1
    Click Element   xpath://*[@id="root"]/div[2]/div[2]/div/div[3]/form/div[8]/div/div/div/button[2]

Verify Create Doa Success
    Sleep    2
    Element Should Contain    xpath:/html/body/div[2]/div    Data telah berhasil disimpan!
    Click Element    xpath:/html/body/div[2]/div/div[6]/button[1]
    