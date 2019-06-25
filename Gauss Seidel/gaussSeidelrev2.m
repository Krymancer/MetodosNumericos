function [ x,itr ] = gaussSeidelrev2( A,B,x,erro )
%%  Ax=b usando Gauss Seidel
n=size(x,1);
normVal=Inf;
itr=0;
while normVal>erro
    xold=x;
    
    for i=1:n
        
        sigma=0;
        
        for j=1:i-1
                sigma=sigma+A(i,j)*x(j);
        end
        
        for j=i+1:n
                sigma=sigma+A(i,j)*xold(j);
        end
        
        x(i)=(1/A(i,i))*(B(i)-sigma);
    end
    
    itr=itr+1;
    normVal=norm(xold-x);
end
end

