*** Settings ***

Library    RequestsLibrary
Library    Collections

*** Variable ***
${URL_API}            https://demo.guru99.com/test/newtours/?
${OPTIONS}            add_argument("--disable-dev-shm-usage"); add_argument("--headless"); add_argument("--no-sandbox"); add_argument("--ignore-certificate-errors")



*** Keywords ***
###SETUP E TEARDOWS###
Conectar a minha API
  Create Session    apelidoAPI    ${URL_API}    

Api "${Api}"
    Set Global Variable    ${Api}
###Conferencias ###
Conferir o status code
    ${RESPOSTA}  GET On Session    apelidoAPI    index.php
    Log    ${RESPOSTA.text}
    Set Test Variable    ${RESPOSTA}
    [Arguments]      ${STATUSCODE_DESEJADO}
    Should Be Equal As Strings    ${RESPOSTA.status_code}    ${STATUSCODE_DESEJADO}
Conferir o reason
    [Arguments]      ${REASON_DESEJADO}
    Should Be Equal As Strings    ${RESPOSTA.reason}    ${REASON_DESEJADO}