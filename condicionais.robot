***Settings***
Documentation       Trabalhando com condicionais


***Test Cases***

Carteira de Motorista
    ${idade}=   Set Variable    17

    IF  ${idade} >=18
        Log To Console      você pode tirar sua CNH!
    ELSE
        Log To Console      vc só pode andar de bike!
    END 

    
Navegador
    ${browser}=     Set Variable    Chrome

#as aspas simples é exclusivo para fazer comparações
    IF          '${browser}' == 'Firefox'
        Log To Console      Chamando o ${browser}
    ELSE IF     '${browser}' == 'Chrome'
        Log To Console      Chamando o ${browser}
    ELSE
        Fail    Navegador incorreto
    END



