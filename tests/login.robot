*** Settings ***

Resource   resources/base.resource

*** Test Cases ***

Deve logar com sucesso

   Start session

   Wait Until Element Is Visible   xpath=//android.widget.TextView[@text="Acumule vantagens exclusivas em suas compras."]
   #Capture Page Screenshot

   Click Element     xpath=//android.widget.TextView[@text="Pular"]
   Wait Until Page Contains    Não tem cadastro? Se cadastre agora!
     
   Input Text          xpath=//android.widget.EditText[@text="Informe seu e-mail"]      junior.braga@gmail.com
   Input Text          xpath=//android.widget.EditText[@text="Senha"]                   Ab12345678*
   Click Element       xpath=//android.view.ViewGroup[@content-desc="Entrar"]

   Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Novidades no clubee"]
       
   Click Element    xpath=//com.horcrux.svg.SvgView[@resource-id="phosphor-react-native-list"]/com.horcrux.svg.z/com.horcrux.svg.H    
   Wait Until Element Is Visible  android=UiSelector().text("Sair do aplicativo")  timeout=5s
   Click Element  android=UiSelector().text("Sair do aplicativo")
   
                          

   Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Acumule vantagens exclusivas em suas compras."]

   Close session

Não deve logar com senha incorreta

   Start session

   Wait Until Element Is Visible   xpath=//android.widget.TextView[@text="Acumule vantagens exclusivas em suas compras."]
   

   Click Element     xpath=//android.widget.TextView[@text="Pular"]
   Wait Until Page Contains    Não tem cadastro? Se cadastre agora!
     
   Input Text          xpath=//android.widget.EditText[@text="Informe seu e-mail"]      junior.braga@gmail.com
   Input Text          xpath=//android.widget.EditText[@text="Senha"]                   Ab1234567*
   Click Element       xpath=//android.view.ViewGroup[@content-desc="Entrar"]

   Wait Until Page Contains    Ooops! Verifique suas credenciais! Podemos ajudar a recuperar seu acesso?
       
   Close session

Não deve aceitar email invalido como bragagmail.com

   Start session 

   Wait Until Page Contains    Esqueceu a senha?  
   Click Element    xpath=//android.widget.Button[@content-desc="Esqueceu a senha?"]
   Wait Until Page Contains    Voltar ao login
   Click Element    xpath=//android.widget.Button[@content-desc="Voltar ao login"]

   Wait Until Element Is Visible   xpath=//android.widget.TextView[@text="Acumule vantagens exclusivas em suas compras."]
   
   Click Element     xpath=//android.widget.TextView[@text="Pular"]
   Wait Until Page Contains    Não tem cadastro? Se cadastre agora!

   Input Text          xpath=//android.widget.EditText[@text="Informe seu e-mail"]      bragagmail.com
   Input Text          xpath=//android.widget.EditText[@text="Senha"]                   Ab1234567*
   Click Element       xpath=//android.view.ViewGroup[@content-desc="Entrar"]
   Wait Until Page Contains               O e-mail inserido é inválido  

   Close session  

 Deve informar que os campos email e senha são compo obrigatório ao clicar em entra

   Start session 

   Wait Until Page Contains    Esqueceu a senha?  
   Click Element    xpath=//android.widget.Button[@content-desc="Esqueceu a senha?"]
   Wait Until Page Contains    Voltar ao login
   Click Element    xpath=//android.widget.Button[@content-desc="Voltar ao login"]

   Wait Until Element Is Visible   xpath=//android.widget.TextView[@text="Acumule vantagens exclusivas em suas compras."]
   
   Click Element     xpath=//android.widget.TextView[@text="Pular"]
   Wait Until Page Contains    Não tem cadastro? Se cadastre agora!                 

   Click Element       xpath=//android.view.ViewGroup[@content-desc="Entrar"]
   Wait Until Page Contains               Campo Obrigatório

   Close session

Deve ir pra tela de Redefina sua senha ao clicar em Esqueceu a senha?

   Start session 

   Wait Until Page Contains    Esqueceu a senha?  
   Click Element    xpath=//android.widget.Button[@content-desc="Esqueceu a senha?"]
   Wait Until Page Contains               Redefina sua senha

   Close session

Deve ir pra tela de escolha ao clicar em não tem cadastro? Se cadastre agora!

   Start session 

   Wait Until Page Contains    Voltar ao login  
   Click Element    xpath=//android.widget.Button[@content-desc="Voltar ao login"]
   Wait Until Element Is Visible   xpath=//android.widget.TextView[@text="Acumule vantagens exclusivas em suas compras."]
   
   Click Element     xpath=//android.widget.TextView[@text="Pular"]
   Wait Until Page Contains    Não tem cadastro? Se cadastre agora! 
   Click Element     xpath=//android.widget.Button[@content-desc="Se cadastre agora!"] 
   Wait Until Page Contains               Sou cliente
   Wait Until Page Contains               Sou empresa

   Close session

   