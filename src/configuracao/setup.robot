*** Settings ***
Library           SeleniumLibrary
Library           OperatingSystem
*** Variables ***
  
${BROWSER}                       Chrome
${OPTIONS}                       add_argument("--disable-dev-shm-usage"); add_argument("--no-sandbox"); add_experimental_option("excludeSwitches", ["enable-logging"]); add_argument("--ignore-certificate-errors"); add_argument("--disable-notifications"); add_argument("--disable-web-security"); add_argument("--window-size=1920,1080")   #; add_argument("--headless")
${URL_HOMEPAGE}                  https://demo.guru99.com/test/newtours/
*** Keywords ***

###Setup e Teardwn###
Abrir navegador

  ${prefs}   Create Dictionary    download.default_directory=${OUTPUTDIR}${/}documentos        #${OUTPUTDIR}/documentos
  Open Browser                    about:blank   ${BROWSER}      options=${OPTIONS}; add_experimental_option('prefs', ${prefs})
  Maximize Browser Window
  Set Selenium Timeout            10 seconds
  
Fechar navegador
  Close Browser

  #### Ações####

Acessar a Home Page da Guru99
  Go To    ${URL_HOMEPAGE}
   