*** Settings ***
Library    Selenium2Library
Resource    ../Resources/App/addDzikir.robot
Resource    ../Variables/Login_Var.robot
Resource    ../Variables/AddDzikir_Var.robot

*** Test Cases ***
Add New Dzikir
    Given user add dzikir success
    When user go to menu dzikir
    And Add Dzikir    ${namadzikir}
    And Add Item Dzikir    ${namabacaan}    ${arab}    ${transliterasi}    ${translasi}    ${pengulangan}    ${referensi}
    Then Verify Add Dzikir Success

    