*** Settings ***
Resource            ../configuracao/setup.robot
Resource            ../resources/HomePage.robot
Test Setup          Abrir navegador
Test Teardown       Fechar navegador

*** Test Case ***

@Cenario01
  [Documentation]    Acessar o site do Guru99 Demo e realizar login com sucesso
  [Tags]    AcessarGuru99    TesteHomePage    Todos
  Acessar a Home Page da Guru99
  Realiza login com user name "QaFelipeRobot" e senha "12345678"
  Exibe a mensagem de login realizado com sucesso

@Cenario02
  [Documentation]    Realizar login com user inexistente
  [Tags]    UserInexistente    TesteHomePage    Todos
  Acessar a Home Page da Guru99
  Realiza login com user name "dehihid" e senha "oidneio"
  Exibe mensagem de user name e senha incorreta

@Cenario03
    [Documentation]    Realizar login com senha incorreta
    [Tags]    SenhaIncorreta    TesteHomePage    Todos

  Acessar a Home Page da Guru99
  Realiza login com user name "Felipe" e senha "oidneio"
  Exibe mensagem de user name e senha incorreta