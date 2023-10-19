*** Settings ***
Documentation        Suite de testes da register page
Library              SeleniumLibrary
Resource             ../elements/HomeElements.robot
Resource             ../elements/RegisterElements.robot


#### Ações####
*** Keywords ***

Preenche os campos de Contact information com o nome "${Nome}", sobre nome "${Sobrenome}", telefone "${Telefone}" e email "${Email}" 
    Title Should Be                  Register: Mercury Tours
    Wait Until Element Is Visible    ${CMP_FirstName}
    Input Text                       ${CMP_FirstName}    ${Nome}
    Input Text                       ${CMP_LastName}    ${Sobrenome}
    Input Text                       ${CMP_Phone}    ${Telefone}
    Input Text                       ${CMP_Email}    ${Email}


Preenche os campos de Mailing Information com endereço "${Endereco}", cidade "${Cidade}", estado "${Estado}", CEP "${CEP}" e seleciona o pais "${Pais}"
    Input Text                       ${CMP_Adderes}    ${Endereco}
    Input Text                       ${CMP_City}    ${Cidade}
    Input Text                       ${CMP_State}    ${Estado}
    Input Text                       ${CMP_PostalCode}    ${CEP}
    Click Element                    ${BTN_Country}
    Wait Until Element Is Visible    xpath=//option[@value][contains(.,'${Pais}')]
    Click Element                    xpath=//option[@value][contains(.,'${Pais}')]

Preenche os campos de User Information com o user name "${UserName}", password "${Password}", confirm password "${PasswordConfirm}" e seleciona enviar
    Input Text                       ${CMP_RegisterName}    ${UserName}
    Sleep    5
    Input Password                   ${CMP_Password}    ${Password}
    Input Password                   ${CMP_ConfPassword}    ${PasswordConfirm}
    Click Element                    ${BTN_Enviar}
    

Valida o cadastro com sucesso
    Wait Until Page Contains         Thank you for registering
    Capture Page Screenshot


Exibe mensagem de erro
    Wait Until Page Contains         Mensagem de Erro