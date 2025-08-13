% Questao 6.1 - Prova B da 204
% Lucas Vasconcelos Resende - 205B

%1
dados = load('TrezePolinomios.txt');
%2
n = input("Digite o grau do primeiro polinômio (0 a 12): ");
while (n < 0 || n > 12)
  n = input("Valor inválido. Digite um valor entre 0 e 12: ");
endwhile
m = input("Digite o grau do segundo polinômio (0 a 12), diferente do anterior:  ");
while (m < 0 || m > 12 || m == n)
  m = input("Valor inválido. Digite um valor entre 0 e 12, diferente do anterior:  ");
endwhile
%3
p1 = dados(n+1,:);
p2 = dados(m+1,:);
printf("raizes do polinômio de grau %d:\n", n);
disp(roots(p1)); %Calcula as raízes (ou zeros) do polinômio cujos coeficientes estão no vetor v
printf("raizes do polinômio de grau %d:\n", m);
disp(roots(p2)); %Calcula as raízes (ou zeros) do polinômio cujos coeficientes estão no vetor v
if n > m
  [q, r] = deconv(p1, p2); %faz a divisão polinomial e retorna: (q = quociente), (r = resto)
  maior = n;
  menor = m;
else
  [q, r] = deconv(p2, p1); %faz a divisão polinomial e retorna: (q = quociente), (r = resto)
  maior = m;
  menor = n;
endif
printf("Quociente da divisão do grau %d pelo grau %d:\n", maior, menor);
disp(q);
produto = conv(p1, p2); %Faz o produto (multiplicação) de dois polinômios.
printf("Produto dos dois polinômios:\n");
disp(produto);
x = linspace(-10, 10, 1000);
figure(1);
plot(x, polyval(p1, x));
xlabel("x");
ylabel("y");
grid on
figure(2);
plot(x, polyval(p2, x));
xlabel("x");
ylabel("y");
grid on
