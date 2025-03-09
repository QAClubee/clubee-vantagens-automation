*** Settings ***
Library  AppiumLibrary

*** Variables ***
${REMOTE_URL}  http://localhost:4723
${PLATFORM_NAME}  Android
${PLATFORM_VERSION}  15
${DEVICE_NAME}  Medium Phone API 35
${AUTOMATION_NAME}  UIAutomator2

*** Keywords ***
Start session
    Open Application  ${REMOTE_URL}
    ...  platformName=${PLATFORM_NAME}
    ...  platformVersion=${PLATFORM_VERSION}
    ...  deviceName=${DEVICE_NAME}
    ...  automationName=${AUTOMATION_NAME}

Close session
    Close Application
