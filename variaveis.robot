***Settings***
Documentation       Exemplos de variaveis


# pode se criar esse espaço para variavel ser global


# a diferença do Set Variable é que pode setar a variavel como suite, ou seja disponibilizar para outros cenarios de teste, 
# uma vez que eu obtenho ela atraves da execução de um comportamento / chamado de um metodo;

***Variables***

# a variavel esta em caixa alta pq é uma constante, o valor não vai ser alterado, é um valor fixo
${APELIDO}  lorD


***Test Cases***

# Set Variable  ->  é uma variavel local
# Set suite variable -> ela fica disponivel de escopo de toda a suite de teste

Exemplo 01
    ${nome}     Set Variable    Rogerio
    Set Suite Variable      ${nome}
    Log To Console          ${nome}
    Log To Console          ${APELIDO}

Exemplo 02
    Log To Console          ${nome}
    Log To Console          ${APELIDO}
 