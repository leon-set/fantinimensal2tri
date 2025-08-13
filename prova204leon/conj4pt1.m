%Conjunto 4.1 - mateus leon 205

xf = 0:0.1:5;
yf = 1./(xf+1);
x1 = -1;
x2 = -1;

x1 = input("Digite um valor para x1, maior que 0 e menor que 5: ");
while x1 <= 0 || x1 >= 5
  x1 = input("Digite um valor para x1, maior que 0 e menor que 5: ");
endwhile
x2 = input("Digite um valor para x2, maior que x1 e menor que 5: ");
while x2 <= x1 || x2 >= 5
  x2 = input("Digite um valor para x2, maior que x1 e menor que 5: ");
endwhile

y1 = 1/(x1+1);
y2 = 1/(x2+1);

P1 = [x1, y1];
P2 = [x2, y2];
P3 = [x2, 0];
P4 = [x1, 0];
xpoligono = [P1(1), P2(1), P3(1), P4(1), P1(1)];
ypoligono = [P1(2), P2(2), P3(2), P4(2), P1(2)];

figure(1, 'Name', '4.1 - Cálculo integral')
%area do poligono
fill(xpoligono, ypoligono, 'k', 'FaceColor', [1, 1, 0], 'FaceAlpha', 1); hold on

%função
plot(xf, yf, '-', 'Color', [0.4, 0, 0.2], 'LineWidth', 1); hold on

%plot do poligono e seus pontos
plot(xpoligono, ypoligono, 'k-');
plot(x1, y1, 'r.', 'MarkerSize', 13); hold on
text(x1-0.03, y1+0.03, "P1", 'HorizontalAlignment', 'right', 'VerticalAlignment', 'bottom', 'FontSize', 14, 'FontWeight', 'normal');
plot(x2, y2, 'r.', 'MarkerSize', 13); hold on
text(x2+0.03, y2+0.03, "P2", 'HorizontalAlignment', 'left', 'VerticalAlignment', 'bottom', 'FontSize', 14, 'FontWeight', 'normal');
plot(x2, 0, 'r.', 'MarkerSize', 13); hold on
text(x2+0.03, +0.03, "P3", 'HorizontalAlignment', 'left', 'VerticalAlignment', 'bottom', 'FontSize', 14, 'FontWeight', 'normal');
plot(x1, 0, 'r.', 'MarkerSize', 13);
text(x1-0.03, +0.03, "P4", 'HorizontalAlignment', 'right', 'VerticalAlignment', 'bottom', 'FontSize', 14, 'FontWeight', 'normal');

%corolindo a area dbaxo
xcurva = x1:0.1:x2;
ycurva = 1./(xcurva+1);
fill([P4(1), x1, xcurva, x2, P3(1)], [P4(2), y1, ycurva, y2, P3(2)], 'b', 'facecolor', [0.8, 0, 1], 'FaceAlpha', 1)

%area trapezio
atrap = (y1+y2)*(x2-x1)/2;
asob = log(x2+1)-log(x1+1);
asup = atrap - asob;
printf("\nÁrea do trapézio (total): %d ||| (%d+%d)*%d/2\n", atrap, y1, y2, x2-x1);
printf("Área sob a curva (amarela): %d ||| ln(%d+1)-ln(%d+1)\n", asob, x2, x1);
printf("Área acima da curva e abaixo da aresta P1-P2 do trapézio (roxo): %d ||| %d-%d\n", asup, atrap, asob);
grid on;
