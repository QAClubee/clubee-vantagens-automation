*** Settings ***

Library         AppiumLibrary
Resource        ../resources/base.resource


*** Variables ***
${START}    

*** Test Cases ***
Pular cadastro 
    Start session
    Click Text    Pular
    Sleep    1

Entrar no termos e condições
    Start session
    Click Text           Pular
    Sleep    1
    Click Element        xpath=//android.widget.Button[@content-desc="Se cadastre agora!"]
    Sleep    1
    Click Element        xpath=//android.widget.TextView[@text="Sou cliente"]
    Sleep    1
    Click Element        xpath=//android.widget.TextView[@text="Termos e Condições"]









Deve errar ao cadastrar com cpf faltando caracteres
    Start session
    Click Text           Pular
    Sleep    1
    Click Element        xpath=//android.widget.Button[@content-desc="Se cadastre agora!"]
    Sleep    1
    Click Element        xpath=//android.widget.TextView[@text="Sou cliente"]
    Sleep    1
    Input Text            xpath=//android.widget.EditText[@text="Nome"]    Jose Carlos
    Sleep    1
    Input Text            xpath=//android.widget.EditText[@text="Nome social"]    Junior Gontijo
    Sleep    1
    Input Text            xpath=//android.widget.EditText[@text="E-mail"]            delbert7251@uorak.co
    Sleep    1
    Input Text            xpath=//android.widget.EditText[@text="CPF"]               462.014.780-0
    Sleep    1
    Input Text            xpath=//android.widget.EditText[@text="Senha"]             12345678lJ@
    Sleep    1
    Input Text            xpath=//android.widget.EditText[@text="Confirmar Senha"]    12345678lJ@
    Sleep    1
    Click Element         xpath=//android.widget.CheckBox
    Sleep    1
    Click Element         xpath=//android.widget.TextView[@text="Cadastre-se"]

Deve errar ao cadastrar com senha acima de 20 caracteres
    Start session
    Click Text           Pular
    Sleep    1
    Click Element        xpath=//android.widget.Button[@content-desc="Se cadastre agora!"]
    Sleep    1
    Click Element        xpath=//android.widget.TextView[@text="Sou cliente"]
    Sleep    1
    Input Text            xpath=//android.widget.EditText[@text="Nome"]    Jose Carlos
    Sleep    1
    Input Text            xpath=//android.widget.EditText[@text="Nome social"]    Junior Gontijo
    Sleep    1
    Input Text            xpath=//android.widget.EditText[@text="E-mail"]            delbert7251@uorak.co
    Sleep    1
    Input Text            xpath=//android.widget.EditText[@text="CPF"]               462.014.780-00
    Sleep    1
    Input Text            xpath=//android.widget.EditText[@text="Senha"]             1234567891011121314151617181920
    Sleep    1
    Input Text            xpath=//android.widget.EditText[@text="Confirmar Senha"]    1234567891011121314151617181920
    Sleep    1
    Click Element         xpath=//android.widget.CheckBox
    Sleep    1
    Click Element         xpath=//android.widget.TextView[@text="Cadastre-se"]
    Sleep    1




Deve cadastrar com cliente com sucesso
    Start session
    Click Text           Pular
    Sleep    1
    Click Element        xpath=//android.widget.Button[@content-desc="Se cadastre agora!"]
    Sleep    1
    Click Element        xpath=//android.widget.TextView[@text="Sou cliente"]
    Sleep    1
    Input Text            xpath=//android.widget.EditText[@text="Nome"]    Jose Carlos
    Sleep    1
    Input Text            xpath=//android.widget.EditText[@text="Nome social"]    Junior Gontijo
    Sleep    1
    Input Text            xpath=//android.widget.EditText[@text="E-mail"]            junin_gym@hotmail.com
    Sleep    1
    Input Text            xpath=//android.widget.EditText[@text="CPF"]               682.060.940-08
    Sleep    1
    Input Text            xpath=//android.widget.EditText[@text="Senha"]             12345678lJ@
    Sleep    1
    Input Text            xpath=//android.widget.EditText[@text="Confirmar Senha"]    12345678lJ@
    Sleep    1
    Click Element         xpath=//android.widget.CheckBox
    Sleep    1
    Click Element         xpath=//android.widget.TextView[@text="Cadastre-se"]
    Sleep    1
    Click Element         xpath=//android.widget.TextView[@text="Continuar"]
    Sleep    1
    Click Element    xpath=//android.widget.TextView[@text="Alimentação"]
    Click Element    xpath=//android.widget.TextView[@text="Petshop"]
    Click Element    xpath=//android.widget.TextView[@text="Produtos artesanais"]
    Click Element    xpath=//android.widget.TextView[@text="Informática e eletrônicos"]
    Click Element    xpath=//android.widget.TextView[@text="Papelaria"]
    Click Element    xpath=//android.widget.TextView[@text="Flores e plantas"]
    Click Element    xpath=//android.widget.TextView[@text="Beleza e estética"]
    Click Element    xpath=//android.widget.TextView[@text="Manutenção de automóveis"]
    Click Element    xpath=//android.widget.TextView[@text="Limpeza de automóveis"]
    Click Element    xpath=//android.widget.TextView[@text="Livraria"]
    Click Element    xpath=//android.widget.TextView[@text="Perfumaria"]
    Click Element    xpath=//android.widget.TextView[@text="Vestuário e calçados"]
    Click Element    xpath=//android.widget.TextView[@text="Informática e eletrónicos"]
    Click Element    xpath=//android.widget.TextView[@text="Continuar"]



Clicar em Continuar
    Start session
    Click Element    xpath=(//android.widget.TextView[@text="Continuar"])[1]

Close session
    Capture Page Screenshot
    [Documentation]    This test case closes the session.
    Log    Closing session
    Close Application
