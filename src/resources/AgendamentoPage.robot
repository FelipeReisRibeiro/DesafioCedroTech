*** Settings ***
Documentation        Suite de testes da agendamento page
Library              SeleniumLibrary
Resource             ../elements/HomeElements.robot
Resource             ../elements/RegisterElements.robot
Resource             ../elements/AgendamentoElements.robot

#### Ações####
*** Keywords ***

Seleciona a opção agendamento
    Wait Until Element Is Visible        ${BTN_Flights}
    Click Element                        ${BTN_Flights}
    Wait Until Page Contains Element     xpath=//img[contains(@height,'30')]        

Preenche os campos de Flight Details de partida Type "One way", Passengers "${Passageiros}", Local Partida "${LocalPartida}", Partida mes "${MesPartida}", dia"${DiaPartida}" 
    Sleep    3
    Click Element                      xpath=//input[contains(@value,'oneway')]
    Click Element                      ${SLCT_Passenger}
    Wait Until Element Is Visible      xpath=//select[1]/option[@value='${Passageiros}'][contains(.,'${Passageiros}')]
    Click Element                      xpath=//select[1]/option[@value='${Passageiros}'][contains(.,'${Passageiros}')]
    Click Element                      ${SLCT_DEparting}
    Wait Until Element Is Visible      xpath=//select[1]/option[@value='${LocalPartida}'][contains(.,'${LocalPartida}')]  
    Click Element                      xpath=//select[1]/option[@value='${LocalPartida}'][contains(.,'${LocalPartida}')]       
    Click Element                      ${SLCT_OnMonth}
    Wait Until Element Is Visible      xpath=//table[1]/tbody[1]/tr[5]/td[2]/select[1]/option[contains(.,'${MesPartida}')]
    Click Element                      xpath=//table[1]/tbody[1]/tr[5]/td[2]/select[1]/option[contains(.,'${MesPartida}')]
    Click Element                      ${SLCT_OnDay}
    Wait Until Element Is Visible      xpath=//table[1]/tbody[1]/tr[5]/td[2]/select[2]/option[contains(.,'${DiaPartida}')]
    Click Element                      xpath=//table[1]/tbody[1]/tr[5]/td[2]/select[2]/option[contains(.,'${DiaPartida}')]


Preenche os campos de Flight Details de retorno, local "${LocalRetorno}" mes "${MesRetorno}", dia "${DiaRetorno}"
    Click Element                      ${SLCT_Arriving}    
    Wait Until Element Is Visible      xpath=//table[1]/tbody[1]/tr[6]/td[2]/select[1]/option[contains(.,'${LocalRetorno}')]  
    Click Element                      xpath=//table[1]/tbody[1]/tr[6]/td[2]/select[1]/option[contains(.,'${LocalRetorno}')]       
    Click Element                      ${SLCT_ReturnMonth}
    Wait Until Element Is Visible      xpath=//table[1]/tbody[1]/tr[7]/td[2]/select[1]/option[contains(.,'${MesRetorno}')]
    Click Element                      xpath=//table[1]/tbody[1]/tr[7]/td[2]/select[1]/option[contains(.,'${MesRetorno}')]
    Click Element                      ${SLCT_OnDay}
    Wait Until Element Is Visible      xpath=//table[1]/tbody[1]/tr[7]/td[2]/select[2]/option[contains(.,'${DiaRetorno}')]
    Click Element                      xpath=//table[1]/tbody[1]/tr[7]/td[2]/select[2]/option[contains(.,'${DiaRetorno}')]

Finaliza o agendamento com sucesso
    Wait Until Page Contains           Mensagem de sucesso