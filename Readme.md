
<h1 .align="center">
  Projeto Cedro Tech  Robot FrameWork
</h1>

## Sobre

O Projeto **"CedroTechRobot"** de automação de testes.

## Pré-requisitos


  - [Download Visual Studio Code](https://code.visualstudio.com/download)
  - [Download Python ](https://www.python.org/downloads/)
  - [Download ChromeDriver](https://chromedriver.chromium.org/downloads) 
  - [Download ChromeDriver versões mais atuais](https://googlechromelabs.github.io/chrome-for-testing/#stable)
  - [Download Geckodriver](https://github.com/mozilla/geckodriver/releases)
  - [Download Driver Edge](https://developer.microsoft.com/en-us/microsoft-edge/tools/webdriver/)
  - [Download Driver Safari](https://webkit.org/blog/6900/webdriver-support-in-safari-10/)

## Instalação
**Instalação do Python**

1 - Baixar o Python em:<br />
https://www.python.org/downloads/<br /><br>
 
2 - Durante a instalação do Python é importante selecionar a opção Add Python to PATH:<br />
<br><img src="public/python.jpg"/><br /><br>
 
3 - Após baixar o Python verificar se ele realmente foi instalado, no Prompt de Comando digitar o comando: python --version<br />  
<img src="public/python_cmd.jpg"><br /><br>
 
4 - Verificar se o Python se encontra configurado nas variáveis de ambiente do Windows (para acessar as variáveis de ambiente basta digitar variáveis de sistema na busca do Windows)<br />
<br> <img src="public/pesquisavariaveis.jpg"> <br/>
<br> <img src="public/verificar python variaveis de ambiente.jpg"> <br/>

<br>**Configurar os Drivers**<br/><br/>
1 - Fazer o download dos drivers<br/>
  - ChromeDriver<br />
https://chromedriver.chromium.org/downloads
  - Geckodriver<br />
https://github.com/mozilla/geckodriver/releases
  - Edge<br />
https://developer.microsoft.com/en-us/microsoft-edge/tools/webdriver/
  - Safari<br />
https://webkit.org/blog/6900/webdriver-support-in-safari-10/<br/>

2 - Descompactar os arquivos e copiar<br/>

3 - Abrir a pasta Script dentro da pasta do Python e colar os arquivos dos Drivers.<br/>
 * Para pegar o caminho da pasta acesse as variáveis de ambiente do Windows lá você irá visualizar o caminho da pasta.<br/>
  - Ex. :  C:\Users\XXXXUsuer\AppData\Local\Programs\Python\PythonXXX\Scripts\ <br/>

4 - Para verificar se o Python foi corretamente instalado, abra o pronpt de comando e digete: python --version <br/>
  O sistema devera exibir a verão do Python instalada <br/><br>


**Instalação do Robot FrameWork**

1 - No Prompt de Comando digitar o comando:<br/>
  pip install robotframework<br> <br/>
2 - No Prompt de Comando digitar o comando:<br/>
  pip install robotframework-seleniumlibrary <br><br/>
3 - Para verificar se o robotframework foi corretamente instalado, abra o pronpt de comando e digete: robot --version<br/>
  O sistema devera exibir a verão do robotframework instalada<br><br/>
4 - No Prompt de Comando digitar o comando:<br/>
  pip install robotframework-requests<br>

**Instalação do Visual Studio Code**

1 - baixar o Visual Studio Code em:
https://code.visualstudio.com/download <br /><br>

2 - Abrir o Visual Studio Code acessar a opção Extensions no menu View (Ctrl+Shift+y) e instalar as Extensions:
  - Robot Framework Intellisense (Tomi Turtiainem)
  - RobotF Extension (KMK Labs)<br /><br>

**Execução de um Cenário**

1 - Habilitar o Terminal no Visual Studio Code, (Ctrl+') ou no menu View opção terminal<br /><br>

2 - Digitar o comando:
  - Para executar todos os testes:<br>
  robot -d ./results  src\test   
  - Para executar os cenarios de uma pagina expecifica:<br>
  robot -d ./results CedroTechRobot\test\XXXXXPage.robot
  - Para executar apenas um cenario:<br>
  robot -d ./results -t "@CenarioXX" src\test\XXXXXPage.robot
  - Para executar pela [TAG] ex. [Tags] Todos:<br>
  robot -d .\results -i Todos src/test  


**Mais Informações Sobre o Robot Framework**

- [Robot Framework](https://robotframework.org/)


**Projeto Robot Framework CEDRO**

<br><img src="public/ProjetoCedro.png"/><br /><br>

