% Questao 3.3 - Prova B da 204
% Lucas Vasconcelos Resende - 205B

r1 = input('digite o valor do raio da primeira circunferencia(que deve ser 0<r1<=8 e par):  ');
resto = mod(r1, 2); %pegar o resto da divisão
while ((r1 < 0) || (r1 > 8) || (resto != 0))
  r1 = input('VALOR INVALIDO, digite o valor do raio da primeira circunferencia(que deve ser 0<r1<=8 e par):  ');
  resto = mod(r1, 2); %pegar o resto da divisão
endwhile
r2 = r1/2;
%circunferencia r1
theta = linspace(0, 2*pi, 100);
xc1 = r1 * cos(theta);
yc1 = r1 * sin(theta);
%circunferencia r2
xc2 = r2 * cos(theta);
yc2 = r2 * sin(theta);
%pontos
grau = randi([0, 360], 1);
ang = grau*pi/180;
p1 = [r1*cos(ang), r1*sin(ang)];
p2 = [r2*cos(ang), r2*sin(ang)];
distancia = sqrt((p1(1)-p2(1))^2 + (p1(2)-p2(2))^2);
%plot
figure(1)
hold on
plot(xc1,yc1)
plot(xc2,yc2)
plot([p1(1), p2(1)], [p1(2), p2(2)]);
plot(p1(1),p1(2), 'or', 'markersize', 10)
plot(p2(1),p2(2), 'or', 'markersize', 10)
grid on
axis equal
printf("a distancia entre p1 e p2 é:  %f", distancia);
