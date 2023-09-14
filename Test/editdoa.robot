*** Settings ***
Library  Selenium2Library
Resource    ../Resources/App/editdoa.robot
Resource    ../Variables/Login_Var.robot
Resource    ../Variables/Doa_Var.robot
Resource    ../Variables/EditDoa_Var.robot

*** Test Cases ***  
Edit doa
    [Tags]    positive_edit
    Given user verify edit doa success
    When user will edit doa
    And user edit field doa    ${editnamadoa}    ${edittranslasi}    ${editreferensi}
    Then user verify edit doa