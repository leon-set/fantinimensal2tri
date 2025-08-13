%Conjunto 6.1 - mateus leon 205

grau = input('Digite um grau entre 6 e 13: ');
while grau < 6 || grau > 13
  grau = input('Valor inválido. Digite um grau entre 6 e 13: ');
endwhile

dados = load('TrezePolinomios.txt');
p = dados(grau+1, :);

x = -10:0.1:10;
y = polyval(p, x);

figure(1, 'Name', 'Função original e correspondente');
plot(x,  y, 'b-'); hold on
p1 = polyfit(x, y, 1);
y1 = polyval(p1, x);
plot(x,  y1, 'r-'); hold on
title('Função original e função de 1o grau aproximada');
grid on;

figure(2, 'Name', 'Função original e correspondente');
plot(x,  y, 'b-'); hold on
p3 = polyfit(x, y, 3);
y3 = polyval(p3, x);
plot(x,  y3, 'r-'); hold on
title('Função original e função de 3o grau aproximada');
grid on;

figure(3, 'Name', 'Função original e correspondente');
plot(x,  y, 'b-'); hold on
p4 = polyfit(x, y, 4);
y4 = polyval(p4, x);
plot(x,  y4, 'r-'); hold on
title('Função original e função de 4o grau aproximada');
grid on;

figure(4, 'Name', 'Função original e correspondente');
plot(x,  y, 'b-'); hold on
p5 = polyfit(x, y, 5);
y5 = polyval(p5, x);
plot(x,  y5, 'r-'); hold on
title('Função original e função de 4o grau aproximada');
grid on;
