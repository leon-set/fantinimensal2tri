% Questao 6.1 - Prova A da 204
% Lucas Vasconcelos Resende - 205B

% (1) / (2) / (3) / (4)
poli = load('TrezePolinomios.txt');
n = input('Digite um numero entre 6 e 13, que corresponde ao grau de um polinomio:  ');
while ((n < 6)||(n > 13))
  n = input('VALOR INVALIDO, digite um numero entre 6 e 13, que corresponde ao grau de um polinomio:  ');
endwhile
linha = n + 1;
f = poli(linha,:);
printf("Funcao escolhida de grau: %d\n", n);
disp(f);
x = linspace(-10,10,300);
y = polyval(f,x);
figure(1, 'Name', 'Questao 6.1');
hold on
plot(x,y)
grid on;
% (5)
p1 = polyfit(x, y, 1);
y1 = polyval(p1, x);
plot(x, y1)
%
figure(2, 'Name', 'Questao 6.1');
hold on
plot(x,y)
p3 = polyfit(x, y, 3);
y3 = polyval(p3, x);
plot(x,y3)
%
figure(3, 'Name', 'Questao 6.1');
hold on
plot(x,y)
p4 = polyfit(x, y, 4);
y4 = polyval(p4, x);
plot(x,y4)
%
figure(4, 'Name', 'Questao 6.1');
hold on
plot(x,y)
p5 = polyfit(x, y, 5);
y5 = polyval(p5, x);
plot(x,y5)

