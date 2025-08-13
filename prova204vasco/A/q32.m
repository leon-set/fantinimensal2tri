% Questao 3.2 - Prova A da 204
% Lucas Vasconcelos Resende - 205B

clear;
clc;
close all;

x1 = input('Digite o x1:  ');
y1 = input('Digite o y1:  ');
%(1)
pontos = cell(9);
pontos{1} = [x1, y1]; %P1 esta na posicao (x1, y1)
pontos{2} = [-x1, y1]; %P2 esta na posicao (−x1, y1)
pontos{3} = [-x1, -y1]; %P3 esta na posicao (−x1,−y1)
pontos{4} = [x1, -y1]; %P4 esta na posicao (x1,−y1)
%(2)
figure('Name', 'Questão 3.2')
hold on
for i = 1:4
  plot(pontos{i}(1), pontos{i}(2), 'k', 'markersize', 12)
  if i == 4
    plot(pontos{i}, pontos{1}, 'b');
  else
    plot(pontos{i}, pontos{i+1}, 'b');
  endif
endfor
%(3)
pontos{5} = [(pontos{1} + pontos{2})/2]; %P5 ponto medio entre os pontos P1 − P2
pontos{6} = [(pontos{2} + pontos{3})/2]; %P6 ponto medio entre os pontos P2 − P3
%(4)
plot(pontos{5}(1), pontos{5}(2), 'or', 'markersize', 8)
plot(pontos{6}(1), pontos{6}(2), 'or', 'markersize', 8)
plot([pontos{5}(1), pontos{6}(1)], [pontos{5}(2), pontos{6}(2)], 'm')
%(5)
pontos{7} = [(pontos{5} + pontos{6})/2]; %P7 ponto medio entre os pontos P5 − P6
%(6)
pontos{8} = [(pontos{1} + pontos{4})/2]; %P8 ponto medio entre os pontos P1 − P4
%(7)
pontos{9} = [(pontos{6} + pontos{8})/2]; %PC ponto medio entre P6 e P8, com as coordenadas (xc e yc)
xc = pontos{9}(1);
yc = pontos{9}(2);
%(8)
plot([pontos{3}(1), pontos{1}(1)], [pontos{3}(2), pontos{1}(2)], 'm')
plot([pontos{7}(1), pontos{9}(1)], [pontos{7}(2), pontos{9}(2)], 'm')
%(9)
diagonal = x1*2;
raio = diagonal/4;
theta = linspace(0, 2*pi, 100);
xcir = xc + raio * cos(theta);
ycir = yc + raio * sin(theta);
plot(xcir, ycir, 'g')
grid on;
axis([-x1-2, x1+2, -y1-2, y1+2]);
