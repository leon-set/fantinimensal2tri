% Questao 2.3 - Prova B da 204
% Lucas Vasconcelos Resende - 205B

%1
load('Energia.mat');
%2
x = Energ(1,:);
y = Energ(3,:);
%3
figure(1)
hold on
plot(x,y,'ro')
title('Energia elástica vs Distancia da mola');
xlabel('Distância (cm)');
ylabel('Energia (J)');
%4
p = polyfit(x,y,2);
a = p(1);
b = p(2);
c = p(3);
%5
z = polyval(p,x);
plot(x,z)
legend('Dados experimentais', 'Ajuste polinomial');
grid on
printf("Funcao obtida: y = %.4f·x^2 + %.4f·x + %.4f\n", a, b, c);
