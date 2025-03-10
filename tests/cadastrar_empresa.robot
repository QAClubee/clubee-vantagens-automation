*** Settings ***

Library         AppiumLibrary
Resource        ../resources/base.resource


*** Variables ***
${START}    

*** Test Cases ***

Cadastrar empresa mas da erro!
    Start session
    Click Text    Pular
    Sleep    1
    Click Element         xpath=//android.widget.Button[@content-desc="Se cadastre agora!"]
    Sleep    1
    Click Element         xpath=//android.widget.TextView[@text="Sou empresa"]
    Click Text    Go back