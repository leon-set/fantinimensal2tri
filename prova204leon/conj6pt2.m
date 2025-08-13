%Conjunto 6.2 - mateus leon 205
n = input('Digite um número maior que 3 para a sequência dos polinômios de Fibonacci: ');
while n < 4
  n = input('Valor inválido. Digite um número maior que 3: ');
endwhile

function fibp = fibpoly(n, x)
  if n == 0
	fibp = 0;
  elseif n == 1
	fibp = 1;
  else
	fibp = x .* (fibpoly(n-1, x)) + (fibpoly(n-2, x));
  end
end
x = -1:0.05:1;
y = fibpoly(n, x);

printf("%do polinômio de Fibonacci:\n", n)
printf("X: ");
for i = 1:length(x)
  printf("%d\t", x(i));
  if mod(i, 5) == 0
    printf("\nY: ");
    for j = i-4:i
      printf("%d\t", y(i));
    endfor
    printf("\n\nX: ");
  endif
endfor
if mod(length(x), 5) != 0
    printf("\nY: ");
    for i = (floor(length(x)/5)*5 + 1):length(x)
        printf("%d\t", y(i));
    endfor
endif
printf("\n\n");

titulofigura = sprintf("%do polinômio de Fibonacci", n);
figure(5, 'Name', titulofigura)
plot(x, y, 'b-');
xlabel('x');
ylabel('f(x)');
title(titulofigura)
grid on;

figure(6, 'Name', 'Polinômios de Fibonacci')
hold on;
cores = {'r-', 'g-', 'b-', 'm-', 'k-'};

plot(x, x.^0, cores{1}, 'DisplayName', '1o FibPoly');
for i = 2:5
    mensagem = sprintf("%do FibPoly", i)
    y_i = fibpoly(i, x);
    plot(x, y_i, cores{i}, 'DisplayName', mensagem);
endfor
legend();
hold off;
title('Primeiros 5 polinômios de Fibonacci');
xlabel('x');
ylabel('f(x)');
grid on;

