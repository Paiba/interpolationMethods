function fvand = vandermonde(t , y)

a=(size(t))(2)
b=t


%Cria a matriz de Vandermonde baseada nos valores de x
  for i=0:a-1
  V(i+1,:)=power(b,i)
  end
  
V = V.'

%k são os coeficientes do polinomio
k=V\(y.')

%criamos o polinomio

