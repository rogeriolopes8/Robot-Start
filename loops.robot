***Settings***
Documentation       Laços de repetição - LOOPS

***Variables***
@{LISTA}     Ironman     Hulk    Thor    CapitaoAmerica


***Test Cases***

Meu primeiro Loop
    FOR     ${item}     IN      @{LISTA}
        IF  $item == 'Ironman'
        Log To Console  Obtendo o vingador: ${item}
        END
    END

Outro Loop
    FOR     ${item}     IN      @{LISTA}
        Exit For Loop IF    $item == 'Thor'
        Log To Console  Obtendo o vingador : ${item}
    END