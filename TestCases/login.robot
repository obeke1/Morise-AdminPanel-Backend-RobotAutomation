*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${browser}  chrome
${url}  https://moriseholdingslimited.000webhostapp.com/admin/
*** Test Cases ***
TestMorise
    open browser  ${url}  ${browser}
    maximize browser window
    set selenium speed  2seconds
    Morisekeywords
    close browser
*** Keywords ***
MoriseKeywords
    input text  name:email  obekevicent@gmail.com
    input text  name:password  1234
    click element  name:form1

