*** Settings ***
Library   Selenium2Library
Resource    ../PO/addDzikir.robot

*** Keywords ***
user add dzikir success
    Login Add Dzikir Success
    
user go to menu dzikir
    Navigate To Menu Dzikir

user add dzikir
    Add Dzikir    ${namadzikir}

user add dzikir item
    Add Item Dzikir    ${namabacaan}    ${arab}    ${transliterasi}    ${translasi}    ${pengulangan}    ${referensi}

user verify add dzikir success
    user verify add dzikir success


