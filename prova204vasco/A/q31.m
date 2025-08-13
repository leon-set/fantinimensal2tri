% Questao 3.1 - Prova A da 204
% Lucas Vasconcelos Resende - 205B

close all;
clear all;
clc;
%plot linhas
x0 = 0;
y0 = 0;
theta = linspace(0, 2*pi, 300);
raio = 4;
x = x0 + raio * cos(theta);
y = y0 + raio * sin(theta);
figure(1, 'Name', 'Questao 3.1, regorio regerio');
hold on;
plot(x, y, 'k');
axis equal;
for i = 1:10
  ang = 2*pi - mod(i - 3, 10) * 2*pi/10;
  xh = x0 + raio * cos(ang);
  yh = y0 + raio * sin(ang);
  plot([x0, xh], [y0, yh], 'k');
  plot(xh, yh, 'r.', 'markersize', 12);
  text(xh+0.2, yh+0.2, num2str(i), 'FontWeight', 'bold');
endfor
%entrada h
h = input('Digite uma hora (1 a 10): ');
while (h < 1 || h > 10)
  h = input('VALOR INVALIDO, digite entre 1 e 10: ');
endwhile
%setor da hora
anginicio = 2*pi - mod(h - 3, 10) * 2*pi/10;
angfim = 2*pi - mod(h - 2, 10) * 2*pi/10;
delta = angfim - anginicio;
if delta > pi
  delta = delta - 2*pi;
elseif delta < -pi
  delta = delta + 2*pi;
end
setor = anginicio + linspace(0, delta, 100);
xsetor = [x0, x0 + raio * cos(setor)];
ysetor = [y0, y0 + raio * sin(setor)];
fill(xsetor, ysetor, 'b');
%animacao
figure(2, 'Name', 'Questao 3.1, regorio regerio');
hold on
axis equal
plot(x,y, 'k')
for i = 1:10
  ang = 2*pi - mod(i - 3, 10) * 2*pi/10;
  %o mod desloca as horas pra posição que está na atividade, o 2*pi no começo inverte o sentido do relógio
  %2*pi/10 divide 360 graus em 10 fatias
  xh = x0 + raio * cos(ang);
  yh = y0 + raio * sin(ang);
  plot([x0, xh], [y0, yh], 'k');
  plot(xh, yh, 'r.', 'markersize', 12);
  text(xh+0.2, yh+0.2, num2str(i), 'FontWeight', 'bold');
endfor
%girando
for h = 1:10
  anginicio = 2*pi - mod(h - 3, 10)*2*pi/10;
  angfim = 2*pi - mod(h - 2, 10)*2*pi/10;
  delta = angfim - anginicio;
  if delta > pi %garante que o fill vai pintar o menor arco
    delta = delta - 2*pi;
  elseif delta < -pi
    delta = delta + 2*pi;
  end
  setor = anginicio + linspace(0, delta, 100);
  xsetor = [x0, x0 + raio * cos(setor)];
  ysetor = [y0, y0 + raio * sin(setor)];
  preencher = fill(xsetor, ysetor, 'b');
  pause(0.5);  % pausa de meio segundo
  delete(preencher); % apaga o setor anterior
endfor
