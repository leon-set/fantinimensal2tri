% Questao 5.2 - Prova A da 204
% Lucas Vasconcelos Resende - 205B

clear; clc;
printf("Funções:\n\n");
printf("1. f(x)= 3x^2 − 2x +3\n2. f(x)=x − 5\n3. f(x)=9x^4 + 1\n\n");
opcao = input('Digite a funcao: ');
switch(opcao)
  case 1
    xf = -10:0.1:10;
    yf = (3.*xf.^2)-(2.*xf)+3;
  case 2
    xf = -10:0.1:10;
    yf = xf-5;
  case 3
    xf = -10:0.1:10;
    yf = (9.*xf.^4)+1;
endswitch
xp = [];
yp = [];
n = input('Digite o valor de n,(entre 2 e 50):  ');
while n < 2 || n > 50
  n = input('VALOR INVALIDO, digite o valor de n,(entre 2 e 50):  ');
endwhile
for i = 1:n
  xp(i) = input("Digite um x para fazer uma separação: ");
  while xp(i) < -10 || xp(i) > 10
    xp(i) = input("VALOR INVALIDO, digite valores de -10 a 10:");
  endwhile
endfor
xp = sort(xp);
switch(opcao)
  case 1
    yp = 3.*xp.^2-2.*xp+3;
  case 2
    yp = xp-5;
  case 3
    yp = (9.*xp.^4)+1;
endswitch
%integral definida
switch(opcao)
  case 1
    areaintegral = (xp(end).^3 - xp(end).^2 + 3*xp(end)) - (xp(1).^3 - xp(1).^2 + 3*xp(1));
  case 2
    areaintegral = ((xp(end).^2)/2 - 5*xp(end)) - ((xp(1).^2)/2 - 5*xp(1));
  case 3
    areaintegral = ((9/5)*xp(end).^5 + xp(end)) - ((9/5)*xp(1).^5 + xp(1));
endswitch
%trapézios
areatrapezios = 0;
for i = 2:n
  base = xp(i)-xp(i-1);
  altura = (yp(i-1)+yp(i))/2;
  areatrapezios += base * altura;
endfor
printf("\nÁrea calculada pela integral definida: %.4f\n", areaintegral);
printf("Área aproximada pelos trapézios: %.4f\n", areatrapezios);
printf("Diferença entre os métodos (erro): %.4f\n", abs(areaintegral - areatrapezios));
figure(1, 'Name', 'Questao 5.2')
hold on
plot([xp(1), xp(1)], [min(yf)-2, yp(1)], 'k-');
for i = 2:n
plot([xp(i-1), xp(i)], [yp(i-1), yp(i)], 'k-');
plot([xp(i), xp(i)], [min(yf)-2, yp(i)], 'k-');
fill([xp(i-1), xp(i-1), xp(i), xp(i)], [min(yf)-2, yp(i-1), yp(i), min(yf)-2], 'b');
endfor
plot(xp, yp, 'ok', 'MarkerSize', 2);
plot(xf, yf, 'r-');
grid on;
