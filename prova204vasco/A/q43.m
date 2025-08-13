% Questao 4.3 - Prova A da 204
% Lucas Vasconcelos Resende - 205B

%(1)
xfuncao = 0:0.1:5;
yfuncao = xfuncao.^2;
%(2)
x1 = input('Digite o x1:  ');
x2 = input('Digite o x2:  ');
%(3)
y1 = x1^2;
y2 = x2^2;
%(4)
figure('Name', 'Questão 4.3')
hold on;
plot(xfuncao, yfuncao)
plot(x1, y1, 'ok', 'markersize', 8)
plot(x2, y2, 'ok', 'markersize', 8)
%(5) / (6)
p1 = [x1,y1];
p2 = [x2,y2];
p3 = [x2, 0];
p4 = [x1, 0];
xpoligono = [p1(1), p2(1), p3(1), p4(1), p1(1)];
ypoligono = [p1(2), p2(2), p3(2), p4(2), p1(2)];
plot(xpoligono, ypoligono)
areatrap = (y1+y2)*(x2-x1)/2;
printf("Area do trapezio: %f\n", areatrap);
grid on;
axis([0.5 3.5 0 14])
