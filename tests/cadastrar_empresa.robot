*** Settings ***

Library         AppiumLibrary
Resource        ../resources/base.resource


*** Variables ***
${Se_cadastre_agora!}    xpath=//android.widget.Button[@content-desc="Se cadastre agora!"]
${Sou_empresa}         xpath=//android.view.ViewGroup[@content-desc="Sou empresa"]

*** Test Cases ***

Cadastrar empresa mas da erro!
    Start session
    Click Text    Pular
    Sleep    1
    Click Element         ${Se_cadastre_agora!}
    Sleep    1
    Click Element         ${Sou_empresa}
    Click Element    Go back