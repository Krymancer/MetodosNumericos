function [ numeroDec ] = Binario_Para_Decimal( numeroBin )

    i = 0; %Expoente do bit atual.
    restoDiv = 0;  
    numeroDec = 0;
    
    while (1)
        restoDiv = mod(numeroBin,10); %Pega o bit bin�rio na posi��o i.
        numeroBin = floor(numeroBin/10); %Salva o pr�ximo n�mero a ser dividido.
        numeroDec = numeroDec + (restoDiv * 2.^i); 
        i = i + 1 ; %Incrementa o expoente do bit atual.
        
        if( numeroBin == 0) %Quando n�o der mais para dividir o n�mero por 10.
            break;
        end       
    end