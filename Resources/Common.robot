*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Begin Web Test
    Open Browser  About:blank  ${BROWSER}

End Web Test
     Close Browser

Insert Testing Data
     Custom Keyword 1
     Custom Keyword 1

Cleaningup Testing Data
     Log  I am cleaning up the testing data
Custom Keyword 1
     Log  Doing keyword 1
Custom Keyword 2
     Log  Doing keyword 2