% Questao 5.1 - Prova A da 204
% Lucas Vasconcelos Resende - 205B

printf("Digite um polinomio para calcular sua derivada e integral\n");
tamanho = input('Digite o grau do polinomio:   ');
coeficiente = [];
for i = 1:tamanho+1
  coeficiente(i) = input('Digite o coeficiente das potencias:   ');
endfor
%função para derivar
function derivada = derivarpolinomio(p)
  grau = length(p)-1;
  derivada = p(1:end-1).*(grau:-1:1);
endfunction
%função para integrar
function integral = integrarpolinomio(p)
  grau = length(p)-1;
  integral = zeros(1,grau+2); %um termo a mais por causa da constante
  for i = 1:grau+1
    expoente = grau-i+2;
    integral(i)=p(i)/expoente;
  endfor
  integral(end) = 0; %ultimo termo é uma constante que pode ser qualquer coisa
endfunction
%código principal
coeficientederivado = derivarpolinomio(coeficiente);
coeficienteintegrado = integrarpolinomio(coeficiente);
%polinomio original
printf("\nSeu polinomio original:  ");
for i = 1:length(coeficiente)
  potencia = length(coeficiente)-i;
  if potencia > 1
    printf("+ %dx^%d ", coeficiente(i), potencia);
  elseif potencia == 1
    printf("+ %dx ", coeficiente(i));
  else
    printf("+ %d", coeficiente(i));
  endif
endfor
%polinomio derivado
printf("\nDerivada:  ");
for i = 1:length(coeficientederivado)
  potencia = length(coeficientederivado)-i;
  if potencia > 1
    printf("+ %dx^%d ", coeficientederivado(i), potencia);
  elseif potencia == 1
    printf("+ %dx ", coeficientederivado(i));
  else
    printf("+ %d", coeficientederivado(i));
  endif
endfor
%polinomio integrado
printf("\nIntegral:  ");
for i = 1:length(coeficienteintegrado)
  potencia = length(coeficienteintegrado)-i;
  if potencia > 1
    printf("+ %dx^%d ", coeficienteintegrado(i), potencia);
  elseif potencia == 1
    printf("+ %dx ", coeficienteintegrado(i));
  else
    printf("+ %d", coeficienteintegrado(i));
  endif
endfor
printf("\n");
