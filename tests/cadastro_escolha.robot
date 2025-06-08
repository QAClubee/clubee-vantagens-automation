*** Settings ***
Resource    resources/base.resource



*** Test Cases ***
Verificar navegação para a tela "Sou Cliente" e voltar
    Start session

    # Clicar no botão "Pular" na tela de Onboarding
    Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Pular"]    timeout=10s
    Click Element    xpath=//android.widget.TextView[@text="Pular"]
    Capture Page Screenshot

    # Clicar no link "Se cadastre agora!" para ir para a tela de Cadastro Escolha
    Wait Until Element Is Visible   xpath=//android.widget.Button[@content-desc="Cadastre-se agora!"]    timeout=10s
    Click Element    xpath=//android.widget.Button[@content-desc="Cadastre-se agora!"]
    Capture Page Screenshot

    # Verificar se o botão "Sou Cliente" está visível
    Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Sou cliente"]    timeout=10s
    Capture Page Screenshot

    # Clicar no botão "Sou Cliente"
    Click Element    xpath=//android.widget.TextView[@text="Sou cliente"]

    # Verificar se o texto "Sou Cliente" aparece na nova tela
    Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Sou Cliente"]    timeout=10s
    Capture Page Screenshot

    # Clicar na seta de voltar
     Click Element    xpath=//android.view.View[@text=""]

    # Verificar se voltou 
    Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Sou cliente"]    timeout=10s
    Capture Page Screenshot

    Close session
