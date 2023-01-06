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
  ${email_text_name}  set variable  name:email
  ${password_text_name}  set variable  name:password
  ${login_btn_name}  set variable  name:form1
  input text  ${email_text_name}  obekevicent@gmail.com
  input text  ${password_text_name}  1234
  click element  ${login_btn_name}

