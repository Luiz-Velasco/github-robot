* Settings *
Library     SeleniumLibrary
Resource    login_elements.robot

* Keywords *
Acessar Site da Qazando
    Open Browser    ${SITE_URL_HERBERT}    chrome

Aguardar site carregar
    Sleep    5s

Clicar sobre o botão login
    Click Element    ${BOTAO_LOGIN}

Digitar email
    [Arguments]    ${usuario}
    Input Text    ${CAMPO_EMAIL}    ${usuario}

Digitar senha
    [Arguments]    ${senha}
    Input Text    ${CAMPO_SENHA}    ${senha}

Clicar em logar
    Click Element    ${BOTAO_LOGAR}