*** Settings ***
Library     AppiumLibrary

*** Variables ***
${ANDROID_AUTOMATION_NAME}    UIAutomator2
${ANDROID_APP}                C:\Users\calib\calculator.apk
${PLATFORM_NAME}      Android
${PLATFORM_VERSION}   9
${APP_PACKAGE}      com.google.android.calculator

*** Keywords ***
Open test Calculator
     Open Application   http://127.0.0.1:4723/wd/hub
     ...     automationName=UIAutomator2
     ...     platformName=Android
     ...     platformVersion=9
     ...     appPackage=com.google.android.calculator
     ...     appActivity=com.android.calculator2.Calculator
     ...     isHeadless=false

add two numbers
    Click Element    com.google.android.calculator:id/digit_5
    Click Element    com.google.android.calculator:id/op_add
    Click Element    com.google.android.calculator:id/digit_3
    Click Element    com.google.android.calculator:id/eq
    ${result}=    Get Text    id=com.google.android.calculator:id/result_final
    Set Global Variable    ${result}
    
Result must be 8
    Should be equal    ${result}    8

add three digit numbers
    Click Element    com.google.android.calculator:id/digit_5
    Click Element    com.google.android.calculator:id/digit_5
    Click Element    com.google.android.calculator:id/op_mul
    Click Element    com.google.android.calculator:id/digit_8
    Click Element    com.google.android.calculator:id/eq


