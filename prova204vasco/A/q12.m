% Questao 1.2 - Prova A da 204
% Lucas Vasconcelos Resende - 205B

p = input('digite a precisão:  ');
real = pi;
aprox1 = 0;
indices1 = [];
erro1 = [];
k = 0;
termo1 = 1;
while(abs(termo1) >= p)
  termo1 = ((-3)^(-k)) / (2*k + 1);
  aprox1 += termo1;
  piaprox1 = sqrt(12)*aprox1;
  erro1(end+1) = abs(pi - piaprox1);
  indices1(end+1) = k+1;
  k += 1;
endwhile
aprox2 = 0;
indices2 = [];
erro2 = [];
k = 0;
termo2 = 1;
while (abs(termo2) >= p)
  termo2 = ((-1)^k) * 4 / (2*k + 1);
  aprox2 += termo2;
  erro2(end+1) = abs(pi - aprox2);
  indices2(end+1) = k+1;
  k += 1;
endwhile
%resultados
printf("pi real: %f\n", real);
printf("Pi aproximado com a PRIMEIRA equação: %f\n", piaprox1);
printf("Pi aproximado com a SEGUNDA equação: %f\n", aprox2);
%plot dos erros
figure(1)
subplot(2,1,1)
plot(indices1, erro1)
grid on
subplot(2,1,2)
plot(indices2, erro2)
grid on
