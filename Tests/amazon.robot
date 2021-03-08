*** Settings ***

Documentation  This is some basic info about whole suit
Resource  ../Resources/Amazon.robot
Resource  ../Resources/Common.robot
Suite Setup  Insert Testing Data
Test Setup  Begin Web Test
Test Teardown  End Web Test
Suite Teardown  Cleaningup Testing Data

*** Variables ***
${START_URL} =  https://www.amazon.com
${BROWSER} =  ie
${SEARCH_TERM} =  Body Wash

*** Test Cases ***
User check for products
    [Documentation]  This is some basic info about smoke
    [Tags]  Current
    Amazon.Search For Products


User sign in to the product
    [Documentation]  This is some basic info about smoke
    [Tags]  Smoke
    Amazon.Search For Products
    Amazon.Select Product From Search Results
    Amazon.Add Product To Cart
    Amazon.Begin Checkout



