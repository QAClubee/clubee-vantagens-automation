*** Settings ***

Library         AppiumLibrary
Resource        ../resources/base.resource


*** Variables ***
${START}    

*** Test Cases ***
Icone perfil
    Start session
    Click Element    xpath=//android.widget.ScrollView/android.view.ViewGroup/android.widget.ImageView
    Sleep    1

Icone notificação tela inicial
    Start session
    Click Element    xpath=//com.horcrux.svg.SvgView[@resource-id="phosphor-react-native-bell"]
    Sleep    1
Icone para deixar o saldo de pontos aberto!
    Start session
    Click Element    xpath=//com.horcrux.svg.SvgView[@resource-id="phosphor-react-native-eye"]

Icone para esconder o saldo de pontos!
    Start session
    Click Element        xpath=//com.horcrux.svg.SvgView[@resource-id="phosphor-react-native-eye-closed"]

Pesquisar Lojas
    Start session
    Click Element    xpath=//android.widget.EditText[@text="Pesquisar lojas"]
    Sleep    1

Loja Petshop
    Start session
    Click Element    xpath=//com.horcrux.svg.SvgView[@resource-id="phosphor-react-native-dog"]
    Sleep    1

Loja Flores e Plantas
    Start session
    Click Element    xpath=//com.horcrux.svg.SvgView[@resource-id="phosphor-react-native-flower"]
    Sleep    1

Loja Papelaria
    Start session
    Click Element    xpath=//com.horcrux.svg.SvgView[@resource-id="phosphor-react-native-book-open-text"]
    Sleep    1

Loja Limpeza de Automóveis
    Start session
    Click Element    xpath=//com.horcrux.svg.SvgView[@resource-id="phosphor-react-native-car-profile"]
    Sleep    1

Loja Informática e Eletrônicos
    Start session
    Click Element    xpath=//com.horcrux.svg.SvgView[@resource-id="phosphor-react-native-desktop-tower"]
    Sleep    1

Loja Alimentação
    Start session
    Click Element    xpath=//com.horcrux.svg.SvgView[@resource-id="phosphor-react-native-fork-knife"]
    Sleep    1

Loja Produtos Artesanais
    Start session
    Click Element    xpath=//com.horcrux.svg.SvgView[@resource-id="phosphor-react-native-yarn"]
    Sleep    1

Loja Livraria
    Start session
    Click Element    xpath=//com.horcrux.svg.SvgView[@resource-id="phosphor-react-native-book"]
    Sleep    1

Loja Beleza e Estética
    Start session
    Click Element    xpath=//com.horcrux.svg.SvgView[@resource-id="phosphor-react-native-hair-dryer"]
    Sleep    1

Loja Vestuário e Calçados
    Start session
    Click Element    xpath=//com.horcrux.svg.SvgView[@resource-id="phosphor-react-native-hair-dryer"]
    Sleep    1

Loja Manutenção de Automóveis
    Start session
    Click Element    xpath=//com.horcrux.svg.SvgView[@resource-id="phosphor-react-native-wrench"]
    Sleep    1

Loja Perfumaria
    Start session
    Click Element    xpath=//com.horcrux.svg.SvgView[@resource-id="phosphor-react-native-flask"]
    Sleep    1

Icone Resgastes
    Start session
    Click Element    xpath=//android.widget.TextView[@text="Resgates"]
    Sleep    1

Icone Pontos
    Start session
    Click Element    xpath=//android.view.View[@content-desc="Pontos"]
    Sleep    1

Icone ? nos Pontos
    Start session
    Click Element    xpath=//android.view.View[@content-desc="Pontos"]
    Sleep    1
    Click Element    xpath=//com.horcrux.svg.SvgView[@resource-id="phosphor-react-native-question-mark"]
    Sleep    1

Icone Pontos mostrar saldo
    Start session
    Click Element    xpath=//android.view.View[@content-desc="Pontos"]
    Sleep    1
    Click Element    xpath=//com.horcrux.svg.SvgView[@resource-id="phosphor-react-native-eye"]
    Sleep    1

Icone Pontos definições
    Start session
    Click Element    xpath=//android.view.View[@content-desc="Pontos"]
    Sleep    1
    Click Element    xpath=//com.horcrux.svg.SvgView[@resource-id="phosphor-react-native-faders-horizontal"]
    Sleep    1

Icone Pontos detalhes de pontos
    Start session
    Click Element    xpath=//android.view.View[@content-desc="Pontos"]
    Sleep    1
    Click Element    xpath=//com.horcrux.svg.SvgView[@resource-id="phosphor-react-native-caret-down"]
    Sleep    1
Icone pontos selecionar atividades
    Start session
    Click Element    xpath=//android.view.View[@content-desc="Pontos"]
    Sleep    1
    Click Element    xpath=//android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[12]
icone Lojas
    Start session
    Click Element    xpath=//android.view.View[@content-desc="Lojas"]
    Sleep    1

Acessar Icone Menu
    Start session
    Click Element    xpath=//android.view.View[@content-desc="Menu"]

Sair do aplicativo
    Start session
    Click Element    xpath=//com.horcrux.svg.SvgView[@resource-id="phosphor-react-native-list-regular"]
    Click Text       xpath=//android.widget.TextView[@text="Sair do aplicativo"]