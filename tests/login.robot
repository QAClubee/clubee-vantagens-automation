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
   #Capture Page Screenshot

   Click Element     xpath=//android.widget.TextView[@text="Pular"]
   Wait Until Page Contains    Não tem cadastro? Se cadastre agora!
     
   Input Text          xpath=//android.widget.EditText[@text="Informe seu e-mail"]      junior.braga@gmail.com
   Input Text          xpath=//android.widget.EditText[@text="Senha"]                   Ab1234567*
   Click Element       xpath=//android.view.ViewGroup[@content-desc="Entrar"]

   Wait Until Page Contains    Ooops! Verifique suas credenciais! Podemos ajudar a recuperar seu acesso?
       
   #Click Element    xpath=//com.horcrux.svg.SvgView[@resource-id="phosphor-react-native-list"]/com.horcrux.svg.z/com.horcrux.svg.H    
   #Wait Until Element Is Visible  android=UiSelector().text("Sair do aplicativo")  timeout=5s
   #Click Element  android=UiSelector().text("Sair do aplicativo")
   
                          

   #Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Acumule vantagens exclusivas em suas compras."]

   Close session
   
   