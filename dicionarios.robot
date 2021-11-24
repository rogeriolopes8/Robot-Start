***Settings***
Documentation       COnhecendo os dicionarios do Robot ( nativo do python)


***Variables***
# #variavel normal/simples
# ${SIMPLES}      Rogerio

# #variavel de listas
# @{CARROS}       chevette    opala   camaro  mustang

#variavel de dicionario - é representado por chave e valor
# serve para criar massa de teste
&{CARRO}    nome=chevette   hp=1500     portas=2    cor=azul





***Test Cases***
Obtendo valores de um dicionario
    Log To Console  ${CARRO}

#vai aparece somente o nome do carro
    Log To Console  ${CARRO.nome}
