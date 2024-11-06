** Settings **
Library  SeleniumLibrary
Variables  credenciais.py

** Variables **
${SITE_URL_SITEQAZANDO}    https://automationpratice.com.br/

** Keywords **
Aguardar Site
    Sleep  3s
Acessar botao login
    Click Element    xpath://a[@href='/login']
Digitar e-mail
    [Arguments]  ${usuario}
    Input Text    id:user    ${usuario}
Digitar senha
    [Arguments]  ${senha}
    Input Password    id:password    ${senha}
Clicar em logar
    Click Element    id:btnLogin

Abrir Site
    Open Browser  ${SITE_URL_SITEQAZANDO}  chrome

** Test Cases **
Cenário 1: Acessando o site do Robot
    Abrir Site
    Aguardar Site
    Acessar botao login
    Aguardar Site
    Digitar e-mail  ${usuario}
    Digitar senha   ${senha}
    Clicar em logar

Cenário 2: Acessando o site do Robot
    Abrir Site
    Aguardar Site
    Acessar botao login
    Aguardar Site
    Digitar e-mail  adm@gmail.com
    Digitar senha   123456
    Clicar em logar