*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Load
     Go To  ${START_URL}
Waiting For Page Loaded
     sleep  3s

