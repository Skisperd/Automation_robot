**Settings ***
Resource        base.robot

Test Setup      Nova sessão
Test Teardown   Finalizar sessão

**Test Cases  ***
Selecionando por Id
    Open browser                    ${url}/radios                        chrome
    Select Radio Button             movies                               cap   
    Radio Button Should Be Set To   movies                               cap

Selecionando por Value
    Open browser                    ${url}/radios                        chrome
    Select Radio Button             movies                               guardians
    Radio Button Should Be Set To   movies                               guardians