%Conjunto 4.3 - mateus leon 205

xf = 0:0.5:5;
yf = xf.^2;
x1 = -1;
x2 = -1;

while x1 <= 0 || x1 >= 5
  x1 = input("Digite um valor para x1, maior que 0 e menor que 5: ");
endwhile
while x2 <= 0 || x2 >= 5
  x2 = input("Digite um valor para x2, maior que 0 e menor que 5: ");
endwhile
y1 = x1^2;
y2 = x2^2;

P1 = [x1, y1];
P2 = [x2, y2];
P3 = [x2, 0];
P4 = [x1, 0];

figure(3, 'Name', '4.3 - Cálculo integral')
clf;
plot(xf, yf, 'b-'); hold on

%plot das linhas
plot([P1(1), P4(1)], [P1(2), P4(2)], 'r-', 'LineWidth', 1);hold on
plot([P2(1), P3(1)], [P2(2), P3(2)], 'r-', 'LineWidth', 1);hold on
plot([P1(1), P2(1)], [P1(2), P2(2)], 'k-', 'LineWidth', 1.3);hold on

%plot dos pontos
plot(x1, y1, 'r.', 'MarkerSize', 13/2); hold on
text(x1-0.03, y1+0.03, "P1", 'HorizontalAlignment', 'right', 'VerticalAlignment', 'bottom', 'FontSize', 14, 'FontWeight', 'normal');
plot(x2, y2, 'r.', 'MarkerSize', 13/2); hold on
text(x2+0.03, y2+0.03, "P2", 'HorizontalAlignment', 'left', 'VerticalAlignment', 'bottom', 'FontSize', 14, 'FontWeight', 'normal');
plot(x2, 0, 'r.', 'MarkerSize', 13/2); hold on
text(x2+0.03, +0.03, "P3", 'HorizontalAlignment', 'left', 'VerticalAlignment', 'bottom', 'FontSize', 14, 'FontWeight', 'normal');
plot(x1, 0, 'r.', 'MarkerSize', 13/2);
text(x1-0.03, +0.03, "P4", 'HorizontalAlignment', 'right', 'VerticalAlignment', 'bottom', 'FontSize', 14, 'FontWeight', 'normal');

%area trapezio
atrap = (y1+y2)*(x2-x1)/2;
printf("\nÁrea do trapézio P1-P2-P3-P4: %d ||| (%d+%d)*%d/2\n", atrap, y1, y2, x2-x1);
grid on;


