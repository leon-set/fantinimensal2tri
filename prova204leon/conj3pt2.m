%Conjunto 3.2 mateus leon 205

theta = linspace(0, 2*pi, 100);
x1 = input("Digite x1: ");
y1 = input("Digite y1: ");

P1 = [x1, y1];
P2 = [-x1, y1];
P3 = [-x1, -y1];
P4 = [x1, -y1];
P5 = (P1+P2)/2;
P6 = (P2+P3)/2;
P7 = (P5+P6)/2;
P8 = (P1+P4)/2;

xc = (P6(1)+P8(1))/2;
yc = (P6(2)+P8(2))/2;
PC = [xc, yc];

%distancia de um ponto a outro (calculo do raio):
%dist = raiz((x1-x2)^2-(y1-y2)^2)
raio = sqrt((P7(1)-PC(1))^2+(P7(2)-PC(2))^2);
pontos = [P1; P2; P3; P4; P5; P6; P7; P8];

xp = [P1(1), P2(1), P3(1), P4(1), P1(1)];
yp = [P1(2), P2(2), P3(2), P4(2), P1(2)];

figure(3, 'Name', '3.2 - Figura')
clf;

plot(xp, yp, 'b-');
hold on

pontos4 = [P1; P2; P3; P4];
for i = 1:length(pontos4)
  plot(pontos4(i), pontos4(i+length(pontos4)), 'ko', 'MarkerSize', 3, 'MarkerFaceColor', 'k')
  text(pontos4(i)*1.1, pontos4(i+length(pontos4))*1.1, ["P",num2str(i)], 'FontSize', 12, 'HorizontalAlignment', 'Left');
  hold on
endfor
plot([P1(1), P3(1)], [P1(2), P3(2)], 'k-'); hold on
plot([P5(1), P6(1)], [P5(2), P6(2)], 'k-'); hold on
plot([PC(1), P7(1)], [PC(2), P7(2)], 'k-'); hold on
plot(P5(1), P5(2), 'ro'); hold on
plot(P6(1), P6(2), 'ro'); hold on
plot(P8(1), P8(2), 'xk'); hold on
plot(PC(1), PC(2), '+k', 'MarkerSize', 8); hold on

%textos dos pontos 5-8
text(P5(1)*1.1, P5(2)*1.1, "P5", 'FontSize', 12, 'HorizontalAlignment', 'Left');
text(P6(1)*1.15, P6(2)*1.15, "P6", 'FontSize', 12, 'HorizontalAlignment', 'Left');
text(P7(1)*1.2, P7(2)*1.2, "P7", 'FontSize', 12, 'HorizontalAlignment', 'Left');
text(P8(1)*1.1, P8(2)*1.1, "P8", 'FontSize', 12, 'HorizontalAlignment', 'Left');

%circulo
circulox = xc + raio * sin(theta);
circuloy = xc + raio * cos(theta);
plot(circulox, circuloy, 'g-');

%ajustes da figura (padding)
grid on;
x_limits = xlim();
y_limits = ylim();
padding_x = 0.1 * (x_limits(2) - x_limits(1));
padding_y = 0.1 * (y_limits(2) - y_limits(1));
if padding_x < 1
  padding_x = 1;
endif
if padding_y < 1
  padding_y = 1;
endif

axis([x_limits(1) - padding_x, x_limits(2) + padding_x, ...
      y_limits(1) - padding_y, y_limits(2) + padding_y]);
