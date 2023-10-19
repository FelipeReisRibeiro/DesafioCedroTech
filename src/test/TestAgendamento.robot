*** Settings ***
Resource            ../configuracao/setup.robot
Resource            ../resources/HomePage.robot
Resource            ../resources/AgendamentoPage.robot
Test Setup          Abrir navegador
Test Teardown       Fechar navegador

*** Test Case ***

@Cenario01
  [Documentation]    Acessar o site do Guru99 Demo e realizar login com sucesso
  [Tags]    RealizaAgendamento    TesteAgendamento    Todos
  Acessar a Home Page da Guru99
  Seleciona a opção agendamento
  Preenche os campos de Flight Details de partida Type "One way", Passengers "2", Local Partida "London", Partida mes "August", dia"22" 
  Preenche os campos de Flight Details de retorno, local "London" mes "August", dia "30"
  Finaliza o agendamento com sucesso
