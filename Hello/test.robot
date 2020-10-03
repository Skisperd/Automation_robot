**Settings ***

Library     app.py

***Test Cases ***
Deve retornar mensagem de boas vindas
    ${result}=          welcome         Tiago
    Should Be Equal     ${result}       Ola Tiago bem vindo ao curso
    
