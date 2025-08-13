% Conjunto 5.1 - Mateus Leon 205

printf("Digite um polinômio para calcular sua derivada e integral\n");
tam = input('Digite o grau do polinômio: ');
coef_p = [];
for i = 1:tam+1
  mensagem = sprintf('Digite o coeficiente da %dª potência: ', tam - i + 1);
  coef_p(i) = input(mensagem);
endfor

function derivada = derivar_polinomio(p)
  grau = length(p)-1;
  derivada = p(1:end-1) .* (grau:-1:1);
endfunction

function integral = integrar_polinomio(p)
  grau = length(p)-1;
  integral = zeros(1, grau+2);  % Integral tem um termo a mais (constante)
  for i = 1:grau+1
    expoente = grau - i + 2;
    integral(i) = p(i)/expoente;
  endfor
  integral(end) = 0;  % Termo constante (poderia ser input do usuário)
endfunction

coef_derivada = derivar_polinomio(coef_p);
coef_integral = integrar_polinomio(coef_p);

printf("\nPolinômio original: ");
for i = 1:length(coef_p)
  potencia = length(coef_p) - i;
  if potencia > 1
    printf("%+dx^%d ", coef_p(i), potencia);
  elseif potencia == 1
    printf("%+dx ", coef_p(i));
  else
    printf("%+d", coef_p(i));
  endif
endfor

printf("\nDerivada: ");
for i = 1:length(coef_derivada)
  potencia = length(coef_derivada) - i;
  if potencia > 1
    printf("%+dx^%d ", coef_derivada(i), potencia);
  elseif potencia == 1
    printf("%+dx ", coef_derivada(i));
  else
    printf("%+d", coef_derivada(i));
  endif
endfor

printf("\nIntegral: ");
for i = 1:length(coef_integral)
  potencia = length(coef_integral) - i;
  if potencia > 1
    printf("%+dx^%d ", coef_integral(i), potencia);
  elseif potencia == 1
    printf("%+dx ", coef_integral(i));
  else
    printf("%+d\n", coef_integral(i));
  endif
endfor
