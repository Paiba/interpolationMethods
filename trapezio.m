function Itr = trapezio(funcao, n, a, b)

h = (b-a)/n;
Itr=0.0;

for i=a:h:b-h
Itr= Itr +(h*(funcao(i)+funcao(i+h))/2);
end
