*** Settings ***
Resource            ../configuracao/setup.robot
Resource            ../resources/HomePage.robot
Resource            ../resources/RegisterPage.robot
Test Setup          Abrir navegador
Test Teardown       Fechar navegador

*** Test Case ***

@Cenario01
  [Documentation]  Realiza um registro com sucesso
  [Tags]    CadastroSucess    TesteRegisterPage    Todos
  Acessar a Home Page da Guru99
  Seleciona a opção no menu superior "REGISTER"
  Preenche os campos de Contact information com o nome "Robson", sobre nome "Fernades", telefone "992345555" e email "robinho@teste.com"
  Preenche os campos de Mailing Information com endereço "Rua teste", cidade "teste", estado "teste", CEP "3435545" e seleciona o pais "BRAZIL"
  Preenche os campos de User Information com o user name "UserNameTeste", password "teste", confirm password "teste" e seleciona enviar
  Valida o cadastro com sucesso


@Cenario02
  [Documentation]  Realiza um registro sem preemcher os campos obrigatorios
  [Tags]    CamposObrigatiros    TesteRegisterPage    Todos
  Acessar a Home Page da Guru99
  Seleciona a opção no menu superior "REGISTER"
  Preenche os campos de Contact information com o nome "Robson", sobre nome "Fernades", telefone "992345555" e email "robinho@teste.com"
  Preenche os campos de Mailing Information com endereço "Rua teste", cidade "teste", estado "teste", CEP "3435545" e seleciona o pais "BRAZIL"
  Preenche os campos de User Information com o user name "UserNameTeste", password "", confirm password "" e seleciona enviar
  Exibe mensagem de erro preencher campos obrigatorios
  
@Cenario03
  [Documentation]  Realiza um registro com os campos de password divergentes
  [Tags]    CamposPassword    TesteRegisterPage    Todos
  Acessar a Home Page da Guru99
  Seleciona a opção no menu superior "REGISTER"
  Preenche os campos de Contact information com o nome "Robson", sobre nome "Fernades", telefone "992345555" e email "robinho@teste.com"
  Preenche os campos de Mailing Information com endereço "Rua teste", cidade "teste", estado "teste", CEP "3435545" e seleciona o pais "BRAZIL"
  Preenche os campos de User Information com o user name "UserNameTeste", password "12345678", confirm password "87654321" e seleciona enviar
  Exibe mensagem de erro password divergente