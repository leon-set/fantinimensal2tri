% Questao 5.1 - Prova B da 204
% Lucas Vasconcelos Resende - 205B

%(1)
f = @(x) x.^3+2.*x; %função anônima, é uma espécie de funcçao sem usar "function"
x1 = input('Digite o valor de x, que voce quer fazer a derivada:  ');
deltax = 1e-5; %é um numero muito pequeno pra aproximar o máximo possivel da derivada
%já que em teoria deveria ser 0, mas não dá pra dividir por 0
derivada = (f(x1+deltax)-f(x1))/deltax;
printf("Derivada: %f\n", derivada);
%(2)
x0 = 1;
y0 = f(x0);
m = (f(x0 + deltax) - f(x0)) / deltax;
printf("Inclinação da reta tangente em x=1: %f\n", m);
x = linspace(-2, 3, 100);
y = f(x);
yreta = y0 + m*(x - x0); %equação para o y de uma reta tangente nos pontos (x0, y0)
figure(1, 'Name', 'Questao 5.1')
hold on
plot(x, y, 'b')
plot(x, yreta, 'r')
grid on
