*** Settings ***
Documentation        Suite de testes da home page
Library              SeleniumLibrary
Resource             ../elements/HomeElements.robot

#### Ações####
*** Keywords ***


Realiza login com user name "${UserName}" e senha "${Senha}"
    Wait Until Element Is Visible            ${CMP_UserName}
    Input Text                               ${CMP_UserName}    ${UserName}
    Wait Until Element Is Visible            ${CMP_Senha}
    Input Text                               ${CMP_Senha}       ${Senha}
    Click Element                            ${BTN_Submit}

Exibe a mensagem de login realizado com sucesso
    Wait Until Page Contains             Login Successfully

Exibe mensagem de user name e senha incorreta
    Wait Until Page Contains             Enter your userName and password correct

Seleciona a opção no menu superior "${Menu_Superior}"
    Click Element                        xpath=//a[normalize-space()='${Menu_Superior}']
    Wait Until Element Is Visible        xpath=//img[contains(@src,'register.gif')]