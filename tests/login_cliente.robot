*** Settings ***

Library         AppiumLibrary
Resource        ../resources/base.resource


*** Variables ***
${START}    

*** Test Cases ***
Login com email errado
    Start session
    Click Text    Pular
    Sleep    1
    Input Text            xpath=//android.widget.EditText[@text="Informe seu e-mail"]    aweuihwaieuh@gmail.com
    Sleep    1
    Click Element         xpath=//com.horcrux.svg.H
    Input Text            xpath=//android.widget.EditText[@text="Senha"]   12345678lJ@
    Click Element         xpath=//android.view.ViewGroup[@content-desc="Entrar"]

Login com senha errada
    Start session
    Click Text    Pular
    Sleep    1
    Input Text            xpath=//android.widget.EditText[@text="Informe seu e-mail"]    junin_gym@hotmail.com
    Sleep    1
    Click Element         xpath=//com.horcrux.svg.H
    Input Text            xpath=//android.widget.EditText[@text="Senha"]    5641561654564
    Click Element         xpath=//android.view.ViewGroup[@content-desc="Entrar"]

Esqueceu a senha e email certo
    Start session
    Click Text    Pular
    Sleep    1
    Click Element        xpath=//android.widget.Button[@content-desc="Esqueceu a senha?"]
    Sleep    1
    Input Text           xpath=//android.widget.EditText[@text="Informe seu e-mail"]    junin_gym@hotmail.com
    Sleep    1
    Click Element        xpath=//android.widget.TextView[@text="Receber Link"]
    Sleep    5
    Click Element        xpath=//android.widget.TextView[@text="Continuar"]

Esqueceu a senha e email errado!
    Start session
    Click Text    Pular
    Sleep    1
    Click Element        xpath=//android.widget.Button[@content-desc="Esqueceu a senha?"]
    Sleep    1
    Input Text           xpath=//android.widget.EditText[@text="Informe seu e-mail"]    aiuhdaaoijdw@hotmail.com

Voltar ao login
    Start session
    Click Text    Pular
    Sleep    1
    Click Element        xpath=//android.widget.Button[@content-desc="Esqueceu a senha?"]
    Sleep    1
    Click Element        xpath=//android.widget.Button[@content-desc="Voltar ao login"]

Login com sucesso
    Start session
    Click Text    Pular
    Sleep    1
    Input Text            xpath=//android.widget.EditText[@text="Informe seu e-mail"]    junin_gym@hotmail.com
    Sleep    1
    Input Text            xpath=//android.widget.EditText[@text="Senha"]    12345678lJ@
    Click Element         xpath=//android.view.ViewGroup[@content-desc="Entrar"]