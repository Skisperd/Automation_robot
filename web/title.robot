**Settings ***

Library     SeleniumLibrary


***Test Cases ***
Should return Page Title
    Open browser        https://training-wheels-protocol.herokuapp.com/     chrome
    Title Should Be     Training Wheels Protocol
    Close browser