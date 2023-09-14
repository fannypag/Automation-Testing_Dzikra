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

Navigate Menu Doa
    Click Element  xpath://*[@id="root"]/div[2]/div[1]/div[4]/a
    Element Should Contain    xpath:/html/body/div/div[2]/div[2]/div/div[2]/div[1]/p    Doa

Click other button
    Click Button    xpath://*[@id="root"]/div[2]/div[2]/div/div[2]/div[1]/div/div/button[1]
    Click Element    xpath://*[@id="root"]/div[2]/div[2]/div/div[2]/div[2]/div[1]/table/tbody/tr[1]/td[5]/div/button
    Click Element    xpath://*[@id="simple-menu"]/div[3]/ul/li[2] 
    Element Should Contain    xpath://*[@id="root"]/div[2]/div[2]/div/div[3]/div/p    Edit Doa

Edit Doa  
    # nama doa  
    [Arguments]    ${editnamadoa}    ${edittranslasi}    ${editreferensi}
    Press Keys    name:doaName    CTRL+A+DELETE
    Input Text     name:doaName    ${editnamadoa}
    Sleep            2
    Press Keys    name:translate    CTRL+A+DELETE
    Input Text     name:translate    ${edittranslasi}
    Press Keys    None    \ue00f
    Sleep    2
    Press Keys    name:referensi    CTRL+A+DELETE
    Input Text     name:referensi    ${editreferensi}
    Press Keys    None    \ue00f
    Sleep    1
    Click Element   xpath://*[@id="root"]/div[2]/div[2]/div/div[3]/form/div[8]/div/div/div/button[2]

Verify Edit Doa Success
    Sleep    2
    Element Should Contain    xpath:/html/body/div[2]/div/h2    Berhasil!
    Click Element    xpath:/html/body/div[2]/div/div[6]/button[1]
    