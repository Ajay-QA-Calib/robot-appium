*** Settings ***
Library     AppiumLibrary
Resource    ../../resource/keywords/launch_application.robot


*** Test Cases ***
Launch calculator app
    Open test Calculator
    add two numbers
    Result must be 8
    add three digit numbers
    Close Application
