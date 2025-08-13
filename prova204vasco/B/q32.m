% Questao 3.2 - Prova B da 204
% Lucas Vasconcelos Resende - 205B

clear all; clc; close all;

n = randi([1,12]); %numero aleatórios de circulos (entre 1 e 12) / gera só um numero
raio = randi([1,10]); %raio dos cículos / gera só um numero
x = randi([1,40], 1, n); %coordenada x dos cícurlo / gera n numeros
y = randi([1,40], 1, n); %coordenada y dos cícurlo / gera n numeros

figure(1)
hold on
axis equal;
for i = 1 : n
  %calculos pro circulo
  theta = linspace(0, 2*pi, 100);
  xc = x(i) + raio * cos(theta);
  yc = y(i) + raio * sin(theta);
  %linhas de diametro
  plot([x(i)-raio, x(i)+raio],[y(i), y(i)]); %horizontal
  plot([x(i), x(i)],[y(i)-raio, y(i)+raio]); %vertical
  %plot
  plot(xc, yc);
  plot(x(i), y(i), 'ok', 'markersize', 6);
  %numero do cículo dentro
  text(x(i)+0.2*raio, y(i)+0.2*raio, num2str(i), 'HorizontalAlignment', 'center', 'VerticalAlignment', 'middle', 'FontSize', 12);
end
disp(['Clique nos ', num2str(n), ' circulos na ordem certa:']);
[xclique, yclique] = ginput(n); %pega as coordenadas dos cliques
acertos = zeros(1,n); %cria o vetor do tamanho certo de uma vez
for i = 1:n
  dx = xclique(i) - x;
  dy = yclique(i) - y;
  dist2 = dx.^2 + dy.^2;
  [distanciocentromaisperto, indicecentro] = min(dist2); %pega qual o menor valor de distãncia até o centro, e o indice desse centro (qual i é ele)
  if distanciocentromaisperto <= raio^2 && indicecentro == i
    acertos(i) = 1;
  endif
end
if sum(acertos) == n %soma de todos os elementos do vetor
  disp('voce acertou');
else
  disp('errou');
end
