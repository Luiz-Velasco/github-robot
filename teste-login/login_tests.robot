* Settings *
Resource    login_keywords.robot
Resource    login_elements.robot
Variables   credenciais.py
Library     SeleniumLibrary

* Test Cases *
Cenário 1: Teste de login com sucesso básico
    [Tags]    basico1
    Acessar Site da Qazando
    Aguardar site carregar
    Clicar sobre o botão login
    Aguardar site carregar
    Digitar email    ${usuario}
    Digitar senha    ${senha}
    Clicar em logar
    Aguardar site carregar
    Wait Until Page Contains    Login realizado