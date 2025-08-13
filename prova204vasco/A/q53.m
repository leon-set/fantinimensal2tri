% Questao 5.3 - Prova A da 204
% Lucas Vasconcelos Resende - 205B

clear; clc; close all;
%(1)
printf("Funções:\n\n");
printf("1. f(x)= 3x^2 − 2x +3\n2. f(x)=x − 5\n3. f(x)=9x^4 + 1\n\n");
opcao = input('Digite a funcao: ');
switch(opcao)
  case 1
    yf = @(x) (3.*x.^2)-(2.*x)+3;
  case 2
    yf = @(x) x-5;
  case 3
    yf = @(x) (9.*x.^4)+1;
endswitch
xf = -10:0.1:10;
%(2)
x1 = -2;
y1 = yf(x1);
x2 = 7;
y2 = yf(x2);
deltax = 1e-5;
derivada = @(x) (yf(x + deltax)-yf(x - deltax))/(2*deltax);
figure(1, 'Name', 'Questao 5.3')
hold on
grid on
plot(xf, yf(xf), 'b')
%(3) / (4)
for i = 1:20 %10 iterações
  y2 = yf(x2);
  msecante = (y2 - y1) / (x2 - x1); %coeficiente angular da secante
  mtangente = derivada(x1);
  plot([x1 x2], [y1 y2])
  x2 = x1 + (x2 - x1) * 0.8; % aproximar x2 de x1
  if abs(msecante - mtangente) < 1e-5  % Se a inclinação da secante estiver próxima da tangente, parar
        break
    end
endfor
%(5)
xreta = linspace(x1 - 2, x1 + 2, 100);
yreta = y1 + mtangente * (xreta - x1);
plot(xreta, yreta, 'r')
printf("Equação para reta tangente:\n\ny = %.2f (x - %.2f) + %.2f\n", mtangente, x1, y1);
