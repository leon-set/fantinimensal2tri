%Conjunto 3.1 - Mateus Leon 205

raio = 4;
x0 = 0;
y0 = 0;
theta = linspace(0, 2*pi, 500);

xc = x0 + raio * cos(theta);
yc = y0 + raio * sin(theta);
pontos = linspace(3*pi/2, (3*pi/2)+(2*pi), 11);
pontos(end) = [];
pontos = pontos * -1;
xp = x0 + raio * cos(pontos);
yp = y0 + raio * sin(pontos);

figure(1, 'Name', '3.1 - Relógio "Lemuriano"');
clf;
%Plot da circunferência
plot(xc, yc, 'k');
hold on;

%Fazendo as linhas do centro até os pontos
for i = 1:10
  plot([x0, xp(i)], [y0, yp(i)], 'k');
  hold on
  plot(xp(i), yp(i), 'ro', 'MarkerSize', 4, 'MarkerFaceColor', 'r');
  hold on
  text(xp(i)*11/10, yp(i)*11/10, num2str(i), 'FontSize', 14, 'FontWeight', 'bold');
endfor

title("Rejóliokk")
axislim = raio+raio/6;
axis([-axislim, axislim, -axislim, axislim])
axis square

%Definir as horas e pintar a circunferência
h = input('Digite as horas (1-10): ');
if h < 1 || h > 10
    error('Hora inválida! Digite um valor entre 1 e 10.');
endif
% Calcula o setor atual
angulo_inicial = pontos(h);
if h == 10
    angulo_final = pontos(1);
else
    angulo_final = pontos(h + 1);
end

if angulo_final > angulo_inicial
    angulo_final = angulo_final - 2*pi;
end

% Gera e plota o novo setor
theta_setor = linspace(angulo_inicial, angulo_final, 100);
x_setor = x0 + raio * cos(theta_setor);
y_setor = y0 + raio * sin(theta_setor);
setor_preenchido = fill([x0, x_setor, x0], [y0, y_setor, y0], 'b');

figure(2, 'Name', '3.1 - Relógio "Lemuriano" funcional');
clf;
plot(xc, yc, 'k')
title("Rejólio jirandokk")
axislim = raio+raio/6;
axis([-axislim, axislim, -axislim, axislim])
axis square

hold on
for i = 1:10
  plot([x0, xp(i)], [y0, yp(i)], 'k');
  plot(xp(i), yp(i), 'ro', 'MarkerSize', 4, 'MarkerFaceColor', 'r');
  text(xp(i)*11/10, yp(i)*11/10, num2str(i), 'FontSize', 14, 'FontWeight', 'bold');
endfor

k = 1;
while true
    idx = mod(k-1, 10) + 1;  %Hora atual (Resto da divisão de k-1 por 10)
    nextidx = mod(idx, 10) + 1;  % Próxima hora

    angulo_inicial_jirando = pontos(idx);
    angulo_final_jirando = pontos(nextidx);
    if angulo_final_jirando > angulo_inicial_jirando
      angulo_final_jirando -= 2*pi;
    end
    theta_setor_jirando = linspace(angulo_inicial_jirando, angulo_final_jirando, 100);
    x_setor_jirando = x0 + raio * cos(theta_setor_jirando);
    y_setor_jirando = y0 + raio * sin(theta_setor_jirando);
    h_patch = fill([x0, x_setor_jirando, x0], [y0, y_setor_jirando, y0], 'b');

    pause(0.3);
    if mod(k, 30) == 0
      sair = input('Continuar o loop por mais 9s? (s/n): ', "s");
      if sair == "n" || sair == "n"
      printf("Saindo do loop.\n");
      return
      else
      printf("Continuando o loop.\n");
      endif
    endif
    delete(h_patch);
    k++;
end
