function Isr = simpson(funcao, n, a, b)

h = (b-a)/n 
Isr=0.0
pares=0
impares=0
k=2
for i=a+h:h:b-h
  indice = mod(k,2)
  if (indice==0)
  pares= pares+funcao(i)
  else
  impares = impares+funcao(i)  
k+1
end