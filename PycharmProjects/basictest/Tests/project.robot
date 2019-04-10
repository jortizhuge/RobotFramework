*** Settings ***
Documentation                    This is a basic test
Library                          Selenium2Library

*** Variables ***
${Browser}  Chrome
${URL}  http://automationpractice.com/index.php


*** Test Cases ***

User can open a page in Chrome
  [Documentation]                I can open the page in Chrome and see the tagline
  open browser                   ${URL}  ${Browser}
  wait until page contains       Yorch
  close browser

User can open a page in Firefox
  [Documentation]                I can open the page in Firefox
  open browser                   http://automationpractice.com/index.php Firefox
  close browser

User can login
  [Documentation]               I can valid login
    open browser                http://automationpractice.com/index.php?controller=authentication&back=my-account Chrome
    Input Text                  id:email      ojuandaniel@gmail.com
    Input Text                  id:passwd     12345
    Click Element               id:authentication
    Close Browser





*** Keywords ***
