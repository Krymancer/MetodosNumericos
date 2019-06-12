clc;
clear;
%exemplo de matriz extendida:
a = [3 1 1 20;2 -1 -1 -15; -4 1 -5 -41];
    disp(a)
    %determina o n de linhas da matriz de coeficientes
    [n,h]=size(a);
    for etapa= 1:n-1
        %mostra o numero da etapa de calculo
        disp('etapa');
        disp(etapa);
        %pivoteamento parcial
        pivot=a(etapa,etapa);
        for i= etapa + 1 :n
            if abs(a(i,etapa))>abs(pivot) 
                linhapivoteamento=i;
                pivot=a(i,etapa);
                aux=a(etapa,1:h);
                a(etapa,1:h)=a(linhapivoteamento,1:h);
                a(linhapivoteamento,1:h)=aux;
            end
        end
        disp('matriz com pivoteamento parcial:')
        disp(a);
        disp('pivo:');
        disp(pivot);
        %calculos para escalonamento
        for i = etapa+1:n
            c=a(i,etapa)/pivot;
            for j= 1:n+1
                a(i,j)=a(i,j)-c*a(etapa,j);
            end
        end
        disp('matriz obtida apos calculos');
        disp(a);
    end
    disp('matriz escalonada')
    disp(a)
    
    %realizando a retrossubstituiçao//
    aux=0;
    r(1,n)=a(n,n+1)/a(n,n);
    for i= n-1:-1:1
        for k=n :-1:1
            aux= aux +r(1,k) * a(i,k);
        end
        r(1,i)=(a(i,n+1)-aux)/a(i,i);
        aux=0;
    end
    %exibe resultado final
    disp('resultado final do sistema');
    disp(r);