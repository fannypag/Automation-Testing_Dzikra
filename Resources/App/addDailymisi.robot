*** Settings ***
Library   Selenium2Library
Resource    ../PO/addDailymisi.robot

*** Keywords ***
user add daily misi success
    Login Add Daily Misi Success
    
user go to menu misi
    Navigate To Menu Misi

user add daily misi
    [Arguments]    ${namamisi}    ${deskripsi}    ${tanggalakt}
    Add Daily Misi    ${namamisi}    ${deskripsi}    ${tanggalakt}

user add daily misi item
    [Arguments]    ${target}    ${keterangan}    ${rewardXP}    ${rewardDZ}
    Add Item Daily Misi    ${target}    ${keterangan}    ${rewardXP}    ${rewardDZ}

user verify add daily misi success
    Verify Add Daily Misi Success


