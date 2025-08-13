% Conjunto 5.2 - Mateus Leon 205
printf("Tendo as funções:\n");
printf("1. f(x) = 3x^2 − 2x +3\n\
2. f(x) = x − 5\n\
3. f(x) = 9x^4 + 1\n\n");

opt = input("Digite qual das funções deseja analisar (1, 2, 3 ou outro para sair): ");
switch opt
  case 1
    xf = -10:0.1:10;
    yf = (3.*xf.^2)-(2.*xf)+3;
  case 2
    xf = -10:0.1:10;
    yf = xf-5;
  case 3
    xf = -10:0.1:10;
    yf = (9.*xf.^4)+1;
  otherwise
    printf("Voltando ao conjunto 5.\n");
    return
endswitch
num = -1;
xp = [];
yp = [];

num = input("Digite quantas separações deseja fazer para calcular a área (máximo 40): ");
while num < 2 || num > 40
  num = input("Mínimo 2, máximo 40: ");
endwhile
for i = 1:num
  mensagem = sprintf("Digite um x para fazer uma separação (%d/%d): ", i, num);
  xp(i) = input(mensagem);
  while xp(i) < -10 || xp(i) > 10
    xp(i) = input("Seja um querido(a) e digite valores de -10 a 10:");
  endwhile
endfor
xp = sort(xp);
switch opt
  case 1
    yp = 3.*xp.^2-2.*xp+3;
  case 2
    yp = xp-5;
  case 3
    yp = (9.*xp.^4)+1;
endswitch

%integral definida
switch opt
  case 1
    integral = @(x) x.^3 - x.^2 + 3*x;
  case 2
    integral = @(x) (x.^2)/2 - 5*x;
  case 3
    integral = @(x) (9/5)*x.^5 + x;
endswitch

area_integral = integral(xp(end)) - integral(xp(1));

%trapézio
area_trapezios = 0;
for i = 2:num
    base = xp(i) - xp(i-1);
    altura_media = (yp(i-1) + yp(i)) / 2;
    area_trapezios += base * altura_media;
endfor

printf("\nÁrea calculada pela integral definida: %.4f\n", area_integral);
printf("Área aproximada pelos trapézios: %.4f\n", area_trapezios);
printf("Diferença entre os métodos (erro): %.4f\n", abs(area_integral - area_trapezios));

figure(1, 'Name', 'Área com cálculo x integral')
clf;

plot([xp(1), xp(1)], [min(yf)-2, yp(1)], 'k-'); hold on
for i = 2:num
plot([xp(i-1), xp(i)], [yp(i-1), yp(i)], 'k-'); hold on
plot([xp(i), xp(i)], [min(yf)-2, yp(i)], 'k-'); hold on
fill([xp(i-1), xp(i-1), xp(i), xp(i)], [min(yf)-2, yp(i-1), yp(i), min(yf)-2], 'b', 'FaceColor', [0, mod(i*0.71, 1), mod(i*0.6, 1)], 'FaceAlpha', 0.7); hold on
endfor
plot(xp, yp, 'ok', 'MarkerSize', 2, 'MarkerFaceColor', 'r'); hold on
plot(xf, yf, 'r-');
grid on;

