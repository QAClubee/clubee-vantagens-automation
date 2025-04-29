*** Settings ***

Library         AppiumLibrary
Resource        ../resources/base.resource

*** Keywords ***

*** Variables ***


*** Test Cases ***

Menu Favoritos NÃO FUNCIONA
    Start session
    Click Element    xpath=//android.view.View[@content-desc="Menu"]
    Sleep    1
    Click Element    xpath=//android.widget.TextView[@text="Favoritos"]


Menu Notificações NÃO FUNCIONA
    Start session
    Click Element    xpath=//android.view.View[@content-desc="Menu"]
    Sleep    1
    Click Element     xpath=//android.widget.TextView[@text="Notificações"]

Menu Meus Resgastes 
    Start session
    Click Element    xpath=//android.view.View[@content-desc="Menu"]
    Sleep    1
    Click Element    xpath=//android.widget.TextView[@text="Meus Resgates"]

Menu Indique Clubee
    Start session
    Click Element    xpath=//android.view.View[@content-desc="Menu"]
    Sleep    1
    Click Element    xpath=//android.widget.TextView[@text="Indique Clubee"]

Menu Indique Club digitar email
    Start session
    Input Text   xpath=//android.widget.EditText[@text="https://www.example.com"]    www.google.com.br

Menu Indique Club Compartilhar Link
    Start session
    Click Element    xpath=//android.widget.TextView[@text="Compartilhar"]


Menu Avaliações
    Start session
    Click Element    xpath=//android.view.View[@content-desc="Menu"]
    Sleep    1
    Click Element    xpath=//android.widget.TextView[@text="Avaliações"]


Menu Configurações
    Start session
    Click Element    xpath=//android.view.View[@content-desc="Menu"]
    Sleep    1
    Click Element    xpath=//android.widget.TextView[@text="Configurações"]
Menu Configurações editar Foto
    Start session
    Click Element    xpath=//android.view.View[@content-desc="Menu"]
    Sleep    1
    Click Element    xpath=//android.widget.TextView[@text="Configurações"]
    Sleep    1
    Click Element    xpath=//com.horcrux.svg.SvgView[@resource-id="phosphor-react-native-camera"]

Menu Configurações editar foto abrir camera
    Start session
    Click Element    xpath=//android.view.View[@content-desc="Menu"]
    Sleep    1
    Click Element    xpath=//android.widget.TextView[@text="Configurações"]
    Sleep    1
    Click Element    xpath=//com.horcrux.svg.SvgView[@resource-id="phosphor-react-native-camera"]
    Sleep    1
    Click Element    xpath=//android.widget.EditText[@text="Estado"]

Menu Configurações editar foto abrir camera escolher foto e mudar estado
    Start session
    Click Element    xpath=//android.view.View[@content-desc="Menu"]
    Sleep    1
    Click Element    xpath=//android.widget.TextView[@text="Configurações"]
    Sleep    1
    Click Element    xpath=//com.horcrux.svg.SvgView[@resource-id="phosphor-react-native-camera"]
    Sleep    1
    Click Element    xpath=//android.widget.EditText[@text="Estado"]
    Sleep    1
    Click Element    xpath=//com.horcrux.svg.SvgView[@resource-id="phosphor-react-native-image"]/com.horcrux.svg.z


Menu Configurações excluir foto
    Start session
    Click Element    xpath=//android.view.View[@content-desc="Menu"]
    Sleep    1
    Click Element    xpath=//android.widget.TextView[@text="Configurações"]
    Sleep    1
    Click Element    xpath=//com.horcrux.svg.SvgView[@resource-id="phosphor-react-native-camera"]
    Sleep    1
    Click Element    xpath=//com.horcrux.svg.SvgView[@resource-id="phosphor-react-native-trash"]

Menu Configurações editar dados pessoais e salvar
    Start session
    Click Element    xpath=//android.view.View[@content-desc="Menu"]
    Sleep    1
    Click Element    xpath=//android.widget.TextView[@text="Configurações"]
    Sleep    1
    Input Text    xpath=//android.widget.EditText[@text="Jose Carlos"]    Jose
    Sleep    1
    Input Text    xpath=//android.widget.EditText[@text="Junior Gontijo"]    Gontijo
    Sleep    1
    Input Text    xpath=//android.widget.EditText[@text="Telefone"]    62982008231
    Sleep    1
    Input Text    xpath=//android.widget.EditText[@text="10/05/1991"]    01/05/1992
    Sleep    1
    Input Text    xpath=//android.widget.EditText[@text="74595-020"]  74510-020
    Sleep    1
    Click Element    xpath=//android.widget.TextView[@text="Salvar"]

Menu Configurações excluir conta
    Start session
    Click Element    xpath=//android.widget.TextView[@text="Deletar conta"]
    Sleep    1
    Click Element    xpath=//android.widget.TextView[@text="Continuar"]
Menu Segurança
    Start session
    Click Element    xpath=//android.view.View[@content-desc="Menu"]
    Sleep    1
    Click Element    xpath=//android.widget.TextView[@text="Segurança"]

Menu Segurança confirmação do e-mail
    Start session
    Click Element    xpath=//android.view.View[@content-desc="Menu"]
    Sleep    1
    Click Element    xpath=//android.widget.TextView[@text="Segurança"]
    Sleep    1
    Click Element    xpath=//android.widget.TextView[@text="Confirmaçao de e-mail"]
Menu Segurança aparecer senha
    Start session
    Click Element    xpath=//android.view.View[@content-desc="Menu"]
    Sleep    1
    Click Element    xpath=//android.widget.TextView[@text="Segurança"]
    Sleep    1
    Click Element    xpath=//android.widget.TextView[@text="Alterar senha"]
    Sleep    1
    Click Element    xpath=//com.horcrux.svg.SvgView[@resource-id="phosphor-react-native-eye"][1]
    Sleep    1
    Input Text       xpath=//android.widget.EditText[@text="Senha antiga"]    12345678lJ@
    Sleep    1
    Click Element    xpath=(//com.horcrux.svg.SvgView[@resource-id="phosphor-react-native-eye"])[2]
    Sleep    1
    Input Text       xpath=//android.widget.EditText[@text="Nova senha"]    12345678lJ@@
    Sleep    1
    Click Element    xpath=(//com.horcrux.svg.SvgView[@resource-id="phosphor-react-native-eye"])[3]
    Sleep    1
    Input Text       xpath=//android.widget.EditText[@text="Confirmar senha"]    12345678lJ@@
    Sleep    1

Menu Segurança esconder senha
    Start session
    Click Element    xpath=//android.view.View[@content-desc="Menu"]
    Sleep    1
    Click Element    xpath=//android.widget.TextView[@text="Segurança"]
    Sleep    1
    Click Element    xpath=//android.widget.TextView[@text="Alterar senha"]
    Sleep    1
    Click Element    xpath=//com.horcrux.svg.SvgView[@resource-id="phosphor-react-native-eye-closed"][1]
    Sleep    1
    Input Text       xpath=//android.widget.EditText[@text="Senha antiga"]    12345678lJ@
    Sleep    1
    Click Element    xpath=(//com.horcrux.svg.SvgView[@resource-id="phosphor-react-native-eye-closed"])[2]
    Sleep    1
    Input Text       xpath=//android.widget.EditText[@text="Nova senha"]    12345678lJ@@
    Sleep    1
    Click Element    xpath=(//com.horcrux.svg.SvgView[@resource-id="phosphor-react-native-eye-closed"])[2]
    Sleep    1
    Input Text       xpath=//android.widget.EditText[@text="Confirmar senha"]    12345678lJ@@
    Sleep    1

Menu Segurança mudar de senha
    Start session
    Click Element    xpath=//android.view.View[@content-desc="Menu"]
    Sleep    1
    Click Element    xpath=//android.widget.TextView[@text="Segurança"]
    Sleep    1
    Click Element    xpath=//android.widget.TextView[@text="Alterar senha"]
    Sleep    1
    Input Text       xpath=//android.widget.EditText[@text="Senha antiga"]    12345678lJ@
    Sleep    1
    Sleep    1
    Input Text       xpath=//android.widget.EditText[@text="Nova senha"]    12345678lJ@@
    Sleep    1
    Input Text       xpath=//android.widget.EditText[@text="Confirmar senha"]    12345678lJ@@
    Sleep    1
    Click Element      xpath=//android.widget.TextView[@text="Salvar"]   

Menu Segurança cancelar de mudar de senha
    Start session
    Click Element    xpath=//android.view.View[@content-desc="Menu"]
    Sleep    1
    Click Element    xpath=//android.widget.TextView[@text="Segurança"]
    Sleep    1
    Click Element    xpath=//android.widget.TextView[@text="Alterar senha"]
    Sleep    1
    Input Text       xpath=//android.widget.EditText[@text="Senha antiga"]    12345678lJ@
    Sleep    1
    Sleep    1
    Input Text       xpath=//android.widget.EditText[@text="Nova senha"]    12345678lJ@@
    Sleep    1
    Input Text       xpath=//android.widget.EditText[@text="Confirmar senha"]    12345678lJ@@
    Sleep    1
    Click Element      xpath=//android.widget.TextView[@text="Cancelar"]


Menu Segurança Aviso de Privacidade Aviso de Privacidade

    Start session
    Click Element    xpath=//android.view.View[@content-desc="Menu"]
    Sleep    1
    Click Element    xpath=//android.widget.TextView[@text="Segurança"]
    Sleep    1
    Click Element    xpath=//android.widget.TextView[@text="Aviso de privacidade"]

Menu Segurança aviso de privacidade
    Start session
    Click Element    xpath=//android.view.View[@content-desc="Menu"]
    Sleep    1
    Click Element    xpath=//android.widget.TextView[@text="Segurança"]

Menu Central de Ajuda
    Start session
    Click Element    xpath=//android.view.View[@content-desc="Menu"]
    Sleep    1
    Click Element    xpath=//android.widget.TextView[@text="Central de Ajuda"]


Menu Central de Ajuda FAQ 
    Start session
    Click Element    xpath=//android.view.View[@content-desc="Menu"]
    Sleep    1
    Click Element    xpath=//android.widget.TextView[@text="Central de Ajuda"]
    Sleep    1
    Click Element    xpath=//android.view.ViewGroup[@content-desc="FAQ"]

Menu Central de Ajuda FAQ dúvidas frequentes pt 1
    Start session
    Click Element    xpath=//android.view.View[@content-desc="Menu"]
    Sleep    1
    Click Element    xpath=//android.widget.TextView[@text="Central de Ajuda"]
    Sleep    1
    Click Element    xpath=//android.view.ViewGroup[@content-desc="FAQ"]
    Sleep    1
    Click Element    xpath=//android.view.ViewGroup[@content-desc="O que é o programa de pontos do Clubee?"]
    Sleep    1
    Click Element    xpath=//com.horcrux.svg.SvgView[@resource-id="phosphor-react-native-caret-up"]
    Sleep    1
    Click Element    xpath=//android.view.ViewGroup[@content-desc="Como funciona a regra de pontos?"]
    Sleep    1
    Click Element    xpath=//com.horcrux.svg.SvgView[@resource-id="phosphor-react-native-caret-up"]
    Sleep    1
    Click Element    xpath=//android.view.ViewGroup[@content-desc="Como funciona a regra de pontos?"]
    Sleep    1
    Click Element    xpath=//com.horcrux.svg.SvgView[@resource-id="phosphor-react-native-caret-up"]
    Sleep    1
    Click Element    xpath=//android.view.ViewGroup[@content-desc="Quanto pago para utilizar o Clubee?"]
    Sleep    1
    Click Element    xpath=//com.horcrux.svg.SvgView[@resource-id="phosphor-react-native-caret-up"]
    Sleep    1
    Click Element    xpath=//android.widget.TextView[@text="E o prazo para trocas?"]
    Sleep    1
    Click Element    xpath=//com.horcrux.svg.SvgView[@resource-id="phosphor-react-native-caret-up"]
    Sleep    1
    Click Element    xpath=//android.widget.TextView[@text="Como saber quando trocar meus pontos?"]
    Sleep    1
    Click Element    xpath=//com.horcrux.svg.SvgView[@resource-id="phosphor-react-native-caret-up"]
    Sleep    1
    Click Element    xpath=//android.widget.TextView[@text="Tenho acesso ao meu saldo de pontos?"]
    Sleep    1

Menu Central de Ajuda FAQ dúvidas frequentes pt 2
    Start session
    Click Element    xpath=//android.widget.TextView[@text="Posso trocar os pontos acumulados em qualquer estabelecimento independente do local de compra?"]
    Sleep    1
    Click Element    xpath=//com.horcrux.svg.SvgView[@resource-id="phosphor-react-native-caret-up"]
    Sleep    1
    Click Element    xpath=//android.widget.TextView[@text="Existe portabilidade do Clubee com outros programas de benefícios?"]
    Sleep    1
    Click Element    xpath=//com.horcrux.svg.SvgView[@resource-id="phosphor-react-native-caret-up"]
    Sleep    1
    Click Element    xpath=//android.widget.TextView[@text="E o prazo para trocas?"]
    Sleep    1
    Click Element    xpath=//com.horcrux.svg.SvgView[@resource-id="phosphor-react-native-caret-up"]
    Sleep    1
    Click Element    xpath=//android.widget.TextView[@text="Como saber quando trocar meus pontos?"]
    Sleep    1
    Click Element    xpath=//com.horcrux.svg.SvgView[@resource-id="phosphor-react-native-caret-up"]
    Sleep    1
    Click Element    xpath=//android.widget.TextView[@text="Tenho acesso ao meu saldo de pontos?"]
    Sleep    1
    Click Element    xpath=//com.horcrux.svg.SvgView[@resource-id="phosphor-react-native-caret-up"]

Menu Central de Ajuda Fale Conosco
    Start session
    Click Element    xpath=//android.view.View[@content-desc="Menu"]
    Sleep    1
    Click Element    xpath=//android.widget.TextView[@text="Central de Ajuda"]
    Sleep    1
    Click Element    xpath=//android.widget.TextView[@text="Fale Conosco"]

Menu Central de Ajuda Fale Conosco Fazer Reclamação
    Start session
    Click Element    xpath=//android.view.View[@content-desc="Menu"]
    Sleep    1
    Click Element    xpath=//android.widget.TextView[@text="Central de Ajuda"]
    Sleep    1
    Click Element    xpath=//android.widget.TextView[@text="Fale Conosco"]
    Sleep    1
    Click Element    xpath=//android.view.ViewGroup[@content-desc="Reclamação"]
    Sleep    1
    Input Text    xpath=//android.widget.EditText[@text="Escreva sua mensagem aqui..."]    O aplicativo tem funcionalidades que não estão funcionando corretamente, por isso que fiz vários testes e relatei no click up lá na página dos testes atutomatizados.
    Sleep    1
    Click Element    xpath=//android.widget.TextView[@text="Enviar"]
    Sleep    1
    Click Element    xpath=//android.widget.TextView[@text="Continuar"]

Menu Central de Ajuda Fazer Sugestão
    Start session
    Click Element    xpath=//android.view.View[@content-desc="Menu"]
    Sleep    1
    Click Element    xpath=//android.widget.TextView[@text="Central de Ajuda"]
    Sleep    1
    Click Element    xpath=//android.widget.TextView[@text="Fale Conosco"]
    Sleep    1
    Click Element    xpath=//android.view.ViewGroup[@content-desc="Sugestão"]
    Sleep    1
    Input Text       xpath=//android.widget.EditText[@text="Escreva sua mensagem aqui..."]    O aplicativo tem funcionalidades que não estão funcionando corretamente, por isso que fiz vários testes e relatei no click up lá na página dos testes atutomatizados.
    Sleep    1
    Click Element    xpath=//android.widget.TextView[@text="Enviar"]
    Sleep    1
    Click Element    xpath=//android.widget.TextView[@text="Continuar"]

Menu Central de Ajuda Dúvida
    Start session
    Click Element    xpath=//android.view.View[@content-desc="Menu"]
    Sleep    1
    Click Element    xpath=//android.widget.TextView[@text="Central de Ajuda"]
    Sleep    1
    Click Element    xpath=//android.widget.TextView[@text="Fale Conosco"]
    Sleep    1
    Click Element    xpath=//android.view.ViewGroup[@content-desc="Dúvida"]
    Sleep    1
    Input Text       xpath=//android.widget.EditText[@text="Escreva sua mensagem aqui..."]    O aplicativo tem funcionalidades que não estão funcionando corretamente, por isso que fiz vários testes e relatei no click up lá na página dos testes atutomatizados.
    Sleep    1
    Click Element    xpath=//android.widget.TextView[@text="Enviar"]
    Sleep    1
Menu Central de Ajuda Outro
    Start session
    Click Element    xpath=//android.view.View[@content-desc="Menu"]
    Sleep    1
    Click Element    xpath=//android.widget.TextView[@text="Central de Ajuda"]
    Sleep    1
    Click Element    xpath=//android.widget.TextView[@text="Fale Conosco"]
    Sleep    1
    Click Element    xpath=//android.view.ViewGroup[@content-desc="Outro"]
    Sleep    1
    Input Text       xpath=//android.widget.EditText[@text="Escreva sua mensagem aqui..."]    O aplicativo tem funcionalidades que não estão funcionando corretamente, por isso que fiz vários testes e relatei no click up lá na página dos testes atutomatizados.
    Sleep    1
    Click Element    xpath=//android.widget.TextView[@text="Enviar"]
    Sleep    1
Menu Central de Ajuda Fale Conosco mandar mensagem sem selecionar opções
    Start session
    Click Element    xpath=//android.view.View[@content-desc="Menu"]
    Sleep    1
    Click Element    xpath=//android.widget.TextView[@text="Central de Ajuda"]
    Sleep    1
    Click Element    xpath=//android.widget.TextView[@text="Fale Conosco"]
    Sleep    1
    Click Element    xpath=//android.view.ViewGroup[@content-desc="Reclamação"]
    Sleep    1
    Input Text       xpath=//android.widget.EditText[@text="Escreva sua mensagem aqui..."]    sssssssssss O aplicativo tem funcionalidades que não estão funcionando corretamente, por isso que fiz vários testes e relatei no click up lá na página dos testes atutomatizados. O aplicativo tem funcionalidades que não estão funcionando corretamente, por isso que fiz vários testes e relatei no click up lá na página dos testes atutomatizados.O aplicativo tem funcionalidades que não estão funcionando corretamente, por isso que fiz vários testes e relatei no click up lá na página dos testes atutomatizados.O aplicativo tem funcionalidades que não estão funcionando corretamente, por isso que fiz vários testes e relatei no click up lá na página dos testes atutomatizados.O aplicativo tem funcionalidades que não estão funcionando corretamente, por isso que fiz vários testes e relatei no click up lá na página dos testes atutomatizados.O aplicativo tem funcionalidades que não estão funcionando corretamente, por isso que fiz vários testes e relatei no click up lá na página dos testes atutomatizados.O aplicativo tem funcionalidades que não estão funcionando corretamente, por isso que fiz vários testes e relatei no click up lá na página dos testes atutomatizados.O aplicativo tem funcionalidades que não estão funcionando corretamente, por isso que fiz vários testes e relatei no click up lá na página dos testes atutomatizados.O aplicativo tem funcionalidades que não estão funcionando corretamente, por isso que fiz vários testes e relatei no click up lá na página dos testes atutomatizados.O aplicativo tem funcionalidades que não estão funcionando corretamente, por isso que fiz vários testes e relatei no click up lá na página dos testes atutomatizados.O aplicativo tem funcionalidades que não estão funcionando corretamente, por isso que fiz vários testes e relatei no click up lá na página dos testes atutomatizados.
    Sleep    1
Sair do aplicativo
    Start session
    Click Element    xpath=//android.view.View[@content-desc="Menu"]
    Sleep    1
    Click Element    xpath=//android.widget.TextView[@text="Sair do aplicativo"]