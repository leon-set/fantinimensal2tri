dados = load("EspectroscopiaX.dat");
energia = dados(1,:);
eletrons = dados(2,:);

opt2 = 1;
while opt2 != 0
  printf("Escolha qual script dessa questão deseja ver:\n1 - Melhor polinômio\n2 - Aproximação linear em 3 intervalos\n");
  opt2 = input('Digite o script ou 0 para sair: ');
  switch opt2
    case 1
figure(2, 'Name', 'Experimento de espectroscopia')
hold on
plot(energia, eletrons, 'ok', 'MarkerSize', 2);

warning('off', 'Octave:nearly-singular-matrix');
warning('off', 'Octave:singular-matrix');

erros = [];
for grau = 1:7
    p = polyfit(energia, eletrons, grau);
    yteste = polyval(p, energia);
    erros(grau) = mean((yteste - eletrons).^2);
end
[~, melhor_grau] = min(erros);
melhorp = polyfit(energia, eletrons, melhor_grau);

warning('on', 'Octave:nearly-singular-matrix');
warning('on', 'Octave:singular-matrix');

melhorp = polyfit(energia, eletrons, melhor_grau);
printf("A função que melhor representa os dados é:\n")
for i = 1:melhor_grau
  if melhorp(i) == 1
  printf("+x^%.4f ", melhor_grau+1-i)
  else
  printf("%+.4fx^%d ", melhorp(i), melhor_grau+1-i)
  endif
endfor
printf("%+.2f\n", melhorp(melhor_grau+1));
x2 = linspace(min(energia), max(energia), 500);
y2 = polyval(melhorp, x2);
plot(x2, y2, 'b-');
grid on;
xlabel('Energia de ligação');
ylabel('Número de elétrons');
hold off;
  case 2
x = energia;
y = eletrons;

n = length(x);
intervalo = floor(n/3);
x1 = x(1:intervalo);
y1 = y(1:intervalo);
x2 = x(intervalo+1:2*intervalo);
y2 = y(intervalo+1:2*intervalo);
x3 = x(2*intervalo+1:end);
y3 = y(2*intervalo+1:end);

p1 = polyfit(x1, y1, 1);
p2 = polyfit(x2, y2, 1);
p3 = polyfit(x3, y3, 1);

figure(3, 'Name', 'Aproximação por Retas em Intervalos');
hold on
plot(x, y, 'ok', 'MarkerSize', 2, 'DisplayName', 'Dados Originais');

xplot1 = linspace(min(x1), max(x1), 100);
plot(xplot1, polyval(p1, xplot1), 'r-');

xplot2 = linspace(min(x2), max(x2), 100);
plot(xplot2, polyval(p2, xplot2), 'b-');

xplot3 = linspace(min(x3), max(x3), 100);
plot(xplot3, polyval(p3, xplot3), 'g-');

grid on
xlabel('Energia de ligação');
ylabel('Número de elétrons');
title('Aproximação Linear por Intervalos');
hold off

printf('\nEquações das retas:\n');
printf('Intervalo 1 (%.2f a %.2f): y = %.4fx + %.4f\n', min(x1), max(x1), p1(1), p1(2));
printf('Intervalo 2 (%.2f a %.2f): y = %.4fx + %.4f\n', min(x2), max(x2), p2(1), p2(2));
printf('Intervalo 3 (%.2f a %.2f): y = %.4fx + %.4f\n', min(x3), max(x3), p3(1), p3(2));
  case 0
    printf("Saindo da questão 2.2...\n");
  otherwise
    printf("Digite uma opção válida.\n")
endswitch
endwhile
