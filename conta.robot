***Settings***
Documentation       Suite para testar a classe ContaLibrary

Library    app/ContaLibrary.py


***Test Cases***
Quando abro uma nova conta deve retornar saldo ZERADO
    Abrir conta
    ${saldo_final}        Obter Saldo

    # aqui converte a string para float
    ${saldo_esperado}     Convert To Number    0.0

    Log     ${saldo_final}

#tem a função de fazer uma validação atraves de um operador de comparação
#qualquer valor que usamos com massa de dados no Robot, ele entende como uma string
    Should Be Equal     ${saldo_final}       ${saldo_esperado}


Quando faço um deposito deve refletir o valor no meu saldo
    Abrir conta
    
    ${valor_deposito}   Convert To Number   100
    Deposita    ${valor_deposito}

    ${saldo_final}  Obter Saldo
    Should Be Equal     ${saldo_final}      ${valor_deposito}

Quando faço um saque deve deduzir o valor do meu saldo
    Abrir conta

    ${valor_deposito}       Convert To Number   1000
    Deposita                ${valor_deposito}

    ${valor_saque}          Convert To Number   100
    Saca                    ${valor_saque}

#Evaluate  -> serve para fazer operação matematica
    ${saldo_esperado}       Evaluate        ${valor_deposito} - ${valor_saque} - 2
    ${saldo_final}          Obter Saldo

    Should Be Equal         ${saldo_final}     ${saldo_esperado}