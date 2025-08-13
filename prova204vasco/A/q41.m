% Questao 4.1 - Prova A da 204
% Lucas Vasconcelos Resende - 205B

%(1)
xfuncao = 0:0.1:5;
yfuncao = 1./(xfuncao+1);
%(2)
x1 = input('Digite o x1, sendo x1 > 0:  ');
x2 = input('Digite o x2, sendo x2 > x1:  ');
while(x2 < x1)
  x2 = input('Valor inváliudo, digite o x2, sendo x2 > x1: ');
end
y1 = 1/(x1+1);
y2 = 1/(x2+1);
%(3) / (4)
p1 = [x1,y1];
p2 = [x2,y2];
p3 = [x2, 0];
p4 = [x1, 0];
xpoligono = [p1(1), p2(1), p3(1), p4(1), p1(1)];
ypoligono = [p1(2), p2(2), p3(2), p4(2), p1(2)];
figure('Name',"Curvas e Areas")
hold on
fill(xpoligono, ypoligono, 'b');
plot(xfuncao, yfuncao);
plot(x1,y1, 'k', 'markersize', 13);
%colorir só area debaixo da linha
plot(x2,y2, 'k', 'markersize', 13);
xcurva = x1:0.1:x2;
ycurva = 1./(xcurva+1);
fill([p4(1), x1, xcurva, x2, p3(1)],[p4(2), y1, ycurva, y2, p3(2)], 'r')
%calculos
areatrap = (y1+y2)*(x2-x1)/2;
areasoblinha = log(x2+1)-log(x1+1);
areatudo = areatrap - areasoblinha;
printf("Area do trapezio: %f\n", areatrap);
printf("Area do sob a linha: %f\n", areasoblinha);
printf("Area do de tudo debaixo da linha: %f\n", areatudo);
