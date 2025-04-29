*** Settings ***
Resource    resources/base.resource

*** Variables ***
${SKIP_BUTTON}        //android.widget.TextView[@text="Pular"]
${REGISTER_LINK}      //android.widget.TextView[@text="Se cadastre agora!"]
${CLIENT_BUTTON}      //android.view.ViewGroup[@content-desc="Sou cliente"]
${CLIENT_TEXT}        //android.widget.TextView[@text="Sou Cliente"]
${BACK_BUTTON}        //com.horcrux.svg.SvgView[@resource-id="phosphor-react-native-caret-left"]/com.horcrux.svg.z/com.horcrux.svg.H
${ONBOARDING_TEXT}    //android.widget.TextView[@text="Acumule vantagens exclusivas em suas compras."]

*** Test Cases ***
Verificar navegação para a tela "Sou Cliente" e voltar
    Start session

    # Clicar no botão "Pular" na tela de Onboarding
    Wait Until Element Is Visible    ${SKIP_BUTTON}    timeout=10s
    Click Element    ${SKIP_BUTTON}
    Capture Page Screenshot

    # Clicar no link "Se cadastre agora!" para ir para a tela de Cadastro Escolha
    Wait Until Element Is Visible    ${REGISTER_LINK}    timeout=10s
    Click Element    ${REGISTER_LINK}
    Capture Page Screenshot

    # Verificar se o botão "Sou Cliente" está visível
    Wait Until Element Is Visible    ${CLIENT_BUTTON}    timeout=10s
    Capture Page Screenshot

    # Clicar no botão "Sou Cliente"
    Click Element    ${CLIENT_BUTTON}

    # Verificar se o texto "Sou Cliente" aparece na nova tela
    Wait Until Element Is Visible    ${CLIENT_TEXT}    timeout=10s
    Capture Page Screenshot

    # Clicar na seta de voltar
    Click Element    ${BACK_BUTTON}

    # Verificar se voltou para a tela inicial do Onboarding
    Wait Until Element Is Visible    ${ONBOARDING_TEXT}    timeout=10s
    Capture Page Screenshot

    Close session
