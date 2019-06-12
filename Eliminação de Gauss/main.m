clc;
clear;
wait = true;
%while(wait)
   uiwait( msgbox('A seguir digite o tamanho do seu sistema (n por m), sendo n = m.','aviso!','warn'));
    

%Recebendo os valores de N e M (tamanho da matriz).
mensagem = {'Digite o valor de N. '};
titulo = 'Tamanho do sistema';
numLinhas = 1;
def = {'',''};
linha = str2double(inputdlg(mensagem,titulo,numLinhas,def)); %Recebendo o valor de linha(s).

        
mensagem = {'Digite o valor de M. '};
titulo = 'Tamanho do sistema';
numLinhas = 1;
def = {'',''};
coluna = str2double(inputdlg(mensagem,titulo,numLinhas,def)); %Recebendo o valor de colunas(s).
%Fim.

while(linha ~= coluna)
    uiwait(msgbox('O valor de linhas (N) deve ser igual ao valor de colunas (M) para ser uma matriz quadrada. Digite novamente:','Erro','error'));
    %Recebendo os valores de N e M (tamanho da matriz).
    mensagem = {'Digite o valor de N. '};
    titulo = 'Tamanho do sistema';
    numLinhas = 1;
    def = {'',''};
    linha = str2double(inputdlg(mensagem,titulo,numLinhas,def)); %Recebendo o valor de linha(s).


    mensagem = {'Digite o valor de M. '};
    titulo = 'Tamanho do sistema';
    numLinhas = 1;
    def = {'',''};
    coluna = str2double(inputdlg(mensagem,titulo,numLinhas,def)); %Recebendo o valor de colunas(s).
    %Fim.
end;


