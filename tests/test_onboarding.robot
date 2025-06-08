*** Settings ***
Resource    resources/base.resource


*** Test Cases ***
Verificar telas do Onboarding
    Start session

    # Verificar primeira tela
    Wait Until Page Contains    Vantagens exclusivas    timeout=10s
    Capture Page Screenshot

    # Ir pra segunda tela e verificar


   Swipe    1000    1205    328    1246   1000

    Wait Until Page Contains         Vamos ajudar o comércio da sua comunidade a crescer!    timeout=10s
    Capture Page Screenshot

    # Ir pra terceira tela e verificar

    Swipe    1000    1205    328    1246   1000

    Wait Until Page Contains         Vamos descobrir lojas e produtos pertinhos de você?    timeout=10s
    Capture Page Screenshot

    # voltar pra segunda tela e verificar

    Swipe    112    1202    1007    1183   1000

    Wait Until Page Contains         Vamos ajudar o comércio da sua comunidade a crescer!    timeout=10s
    Capture Page Screenshot


    # voltar pra primeira tela e verificar

    Swipe    112    1202    1007    1183   1000

    Wait Until Page Contains         Vantagens exclusivas        timeout=10s
    Capture Page Screenshot

     # Clicar no botão "Cadastre-se"
      
    Wait Until Page Contains         Cadastre-se        timeout=10s
    Click Element   xpath=//android.widget.TextView[@text="Cadastre-se"]

    # Verificar se foi para a tela de cadastro (Texto "Sou Cliente")
    Wait Until Element Is Visible   xpath=//android.widget.TextView[@text="Sou cliente"]    timeout=10s
    Capture Page Screenshot

   
    Close session
