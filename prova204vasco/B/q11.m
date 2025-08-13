% Questao 1.1 - Prova B da 204
% Lucas Vasconcelos Resende - 205B

theta = input('digite o angulo theta:  ');
radiano = theta*pi/180;
n = input('digite o numero de termos:  ');
aproximado = 0;

for i = 0 : n
  termo = (radiano^(2*i))*((-1)^i)/factorial(2*i);
  aproximado += termo;
end
real = cos(radiano);
erro = real - aproximado;
printf("cosseno aproximado: %f\n", aproximado);
printf("cosseno real: %f\n", real);
printf("Erro: %f\n", erro);
%printf dos 4 primeiros termos
printf("\n\n Primeiros 4 termos\n\n");
for i = 0:3
  termo = (radiano^(2*i))*((-1)^i)/factorial(2*i);
  printf("Termo %d: %f\n", i+1, termo);
end
