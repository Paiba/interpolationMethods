function Isr = simpson(funcao, n, a, b)

h = (b-a)/n; 
Isr=0;
pares=0;
impares=0;
k=2;
for i=a+h:h:b-h
  indice = mod(k,2);
  if (indice<=0)
  pares= pares+funcao(i);
  else
  impares = impares+funcao(i);
  endif  
k+1;
end

Isr = (h/3)*(funcao(a)+4*(impares)+2*(pares)+funcao(b));