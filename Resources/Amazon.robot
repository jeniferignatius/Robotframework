*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/PO/LandingPage.robot

*** Keywords ***
Search For Products
    LandingPage.Load
    LandingPage.Waiting For Page Loaded
    Input Text  id=twotabsearchtextbox  Body Wash
    #Click Button  css=#nav-search-submit-button
    Click Button  XPath=//*[@id="nav-search-submit-button"]
    #Wait Until Page Contains  results for "Body Wash"
    sleep  3s
Select Product From Search Results
    Click Link  css=#search > div.s-desktop-width-max.s-desktop-content.sg-row > div.sg-col-16-of-20.sg-col.sg-col-8-of-12.sg-col-12-of-16 > div > span:nth-child(4) > div.s-main-slot.s-result-list.s-search-results.sg-row > div:nth-child(6) > div > span > div > div > div:nth-child(3) > h2 > a
Add Product To Cart
    Click Button  css=#add-to-cart-button
    sleep  3s
Begin Checkout
    Click Link  css=#hlb-ptc-btn-native
