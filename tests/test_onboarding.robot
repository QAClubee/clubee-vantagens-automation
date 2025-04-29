*** Settings ***
Resource    resources/base.resource

*** Variables ***
${ONBOARDING_TEXT_1}    //android.widget.TextView[@text="Acumule vantagens exclusivas em suas compras."]
${ONBOARDING_TEXT_2}    //android.widget.TextView[@text="Apoie e impulsione o comercio na sua comunidade."]
${ONBOARDING_TEXT_3}    //android.widget.TextView[@text="Conheça novas lojas e produtos desenvolvidos por comerciantes locais."]
${NEXT_BUTTON}          //android.widget.TextView[@text=""]
${BACK_BUTTON}          //android.widget.TextView[@text=""]
${REGISTER_BUTTON}      //android.view.ViewGroup[@content-desc="Cadastre-se"]
${REGISTER_TEXT}        //android.widget.TextView[@text="Sou Cliente"]
${BACK_REGISTER}        //com.horcrux.svg.SvgView[@resource-id="phosphor-react-native-caret-left"]/com.horcrux.svg.z/com.horcrux.svg.H
${SKIP_BUTTON}         //android.widget.TextView[@text="Pular"]
${IMAGE_ELEMENT}       //android.widget.ImageView

*** Test Cases ***
Verificar telas do Onboarding
    Start session

    # Verificar primeira tela
    Wait Until Element Is Visible    ${ONBOARDING_TEXT_1}    timeout=10s
    Capture Page Screenshot

    # Ir para a segunda tela
    Click Element    ${NEXT_BUTTON}
    Wait Until Element Is Visible    ${ONBOARDING_TEXT_2}    timeout=10s
    Capture Page Screenshot

    # Ir para a terceira tela
    Click Element    ${NEXT_BUTTON}
    Wait Until Element Is Visible    ${ONBOARDING_TEXT_3}    timeout=10s
    Capture Page Screenshot

    # Voltar para a segunda tela
    Click Element    ${BACK_BUTTON}
    Wait Until Element Is Visible    ${ONBOARDING_TEXT_2}    timeout=10s
    Capture Page Screenshot

    # Voltar para a primeira tela
    Click Element    ${BACK_BUTTON}
    Wait Until Element Is Visible    ${ONBOARDING_TEXT_1}    timeout=10s
    Capture Page Screenshot

    # Clicar no botão "Cadastre-se"
    Click Element    ${REGISTER_BUTTON}
    
    # Verificar se foi para a tela de cadastro (Texto "Sou Cliente")
    Wait Until Element Is Visible    ${REGISTER_TEXT}    timeout=10s
    Capture Page Screenshot

    # Clicar na seta de voltar na tela de cadastro
    Click Element    ${BACK_REGISTER}

    # Verificar se voltou para a primeira tela do Onboarding
    Wait Until Element Is Visible    ${ONBOARDING_TEXT_1}    timeout=10s
    Capture Page Screenshot

    # Testar o botão "Pular"
    Click Element    ${SKIP_BUTTON}

    # Verificar se a imagem aparece da tela Login
    Wait Until Element Is Visible    ${IMAGE_ELEMENT}    timeout=10s
    Capture Page Screenshot

    Close session
