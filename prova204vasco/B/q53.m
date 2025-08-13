% Questao 5.3 - Prova B da 204
% Lucas Vasconcelos Resende - 205B

%(1)
yf = @(x) x^3 + 2*x^2 - x + 3;
coeficientes = [1, 2, -1, 3];
analitica = @(x) 3*x^2 + 4*x - 1;
%(2)
printf("Valor da derivada no ponto x = 1, usando ANALITICA:\n\n");
disp(analitica(1))
%(3)
deltax = 1e-5;
avanco = @(x) (yf(x + deltax)-yf(x))/deltax;
atraso = @(x) (yf(x) - yf(x - deltax))/deltax;
central = @(x) (yf(x + deltax)-yf(x - deltax))/(2*deltax);
printf("Valor da derivada no ponto x = 1, usando NUMERICA - AVANCO:\n\n");
disp(avanco(1));
printf("Valor da derivada no ponto x = 1, usando NUMERICA - ATRASO:\n\n");
disp(atraso(1));
printf("Valor da derivada no ponto x = 1, usando NUMERICA - CENTRAL:\n\n");
disp(central(1));
