*** Settings ***

Library         AppiumLibrary
Resource        ../resources/base.resource


*** Variables ***
${START}    

*** Test Cases ***
Cadastra-se primeira tela
    Start session
    Click Element    xpath=//android.widget.TextView[@text="Cadastre-se"]

Seta pra direita 1 passo Cadastre-se
    Start session
    Click Element    xpath=//android.widget.TextView[@text=""]
    Click Element    xpath=//android.widget.TextView[@text="Cadastre-se"]
Seta pra direita 2 passo Cadastre-se
    Start session
    Click Element    xpath=//android.widget.TextView[@text=""]
    Click Element    xpath=//android.widget.TextView[@text=""]
    Click Element    xpath=////android.widget.TextView[@text="Cadastre-se"]

Seta pra direita 3 passo Cadastre-se
    Start session
    Click Element    xpath=//android.widget.TextView[@text=""]
    Click Element    xpath=////android.widget.TextView[@text="Cadastre-se"]


Seta pra direita pronto
    Start session
    Click Element    xpath=//android.widget.TextView[@text=""]
    Click Element    xpath=//android.widget.TextView[@text=""]
    Click Element    xpath=//android.widget.TextView[@text="✓"]

Seta pra esquerda ultimo passo
    Start session
    Click Element    xpath=//android.widget.TextView[@text=""]
    Click Element    xpath=//android.widget.TextView[@text=""]
    Click Element    xpath=//android.widget.TextView[@text=""]
    Click Element    xpath=//android.widget.TextView[@text=""]