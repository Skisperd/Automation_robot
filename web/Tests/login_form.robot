**Settings ***
Resource        base.robot

Test Setup      Nova sessão
Test Teardown   Finalizar sessão

***Test Cases ***
Login com sucesso
    Go To           ${url}/login
    Login With      stark                           jarvis!

    Should See Logged User                         Tony Stark

Senha invalida
    [tags]          login_error
    Go To           ${url}/login
    Login With      stark                           123456

    Should Contain Login Alert                      Senha é invalida

Usuario invalido    
    [tags]          login_user404
    Go To           ${url}/login
    Login With      tiago                           1234

    Should Contain Login Alert                      O usuário informado não está cadastrado!

***Keywords ***
Login With
    [Arguments]     ${username}     ${password}

    Input Text      css:input[name=username]        ${username}
    Input Text      css:input[name=password]        ${password}
    Click Element   class:btn-login

Should Contain Login Alert
    [Arguments]     ${expect_message}

    ${message}=     Get WebElement                  id:flash
    Should Contain  ${message.text}                 ${expect_message}

Should See Logged User
    [Arguments]     ${full_name}

    Page Should Contain     Olá, ${full_name}. Você acessou a área logada!