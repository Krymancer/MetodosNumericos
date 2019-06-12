function [ numeroBin ] = Decimal_Para_Binario( numeroDec )  

    restoDiv = []; %Declara��o do vetor de resto das divis�es (vazio).
    
    while (1)
        
        restoDiv = [restoDiv,mod(numeroDec,2)]; %Faz o vetor receber ele mesmo + o resto da divis�o.
        numeroDec = floor(numeroDec/2); %Divide o numero em decimal por 2 e atribui o resultado arrendondando para baixo.
        
        if (numeroDec == 0) %Se j� foram feitas todas as divis�es poss�veis, ent�o "quebra" o loop.
            break;
        end
        
    end
    
    numeroBin = fliplr(restoDiv); %Inverte o vetor de restos e atribui a numeroBin (resultado final).
    
    %txt = sprintf('%d',nBaseBinaria); %Converte o n�mero em texto para printar na tela.
    
    %disp(txt); %Printa na tela o resultado final.
end


