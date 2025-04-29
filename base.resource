*** Settings ***

Library         AppiumLibrary

*** Variables ***

*** Keywords ***
Start session

    Open Application        http://localhost:4723
    ...                     platformName=Android   
    ...                     platformVersion=12 
    ...                     deviceName=Pixel 8 API 30
    ...                     automationName=UIAutomator2
Close session  
    Capture Page Screenshot
    Close Application
