*** Settings ***
Resource         ../resources/ChamadaAPI.robot
Suite Setup      Conectar a minha API

*** Test Case ***

@Cenario01
  [Documentation]  Realizar conferencia de retorno API HomePage
  [Tags]    RETORNOAPI
  Api "index.php"
  Conferir o status code   200
  Conferir o reason   OK

@Cenario02
  [Documentation]  Realizar conferencia de retorno API ReservaPage
  [Tags]    RETORNOAPI
  Api "reservation.php"
  Conferir o status code   200
  Conferir o reason   OK


@Cenario03
  [Documentation]  Realizar conferencia de retorno API RegistroPage
  [Tags]    RETORNOAPI
  Api "register.php"
  Conferir o status code   200
  Conferir o reason   OK