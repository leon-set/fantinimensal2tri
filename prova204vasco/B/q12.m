% Questao 1.2 - Prova B da 204
% Lucas Vasconcelos Resende - 205B

p = input('Digite a precisão desejada entre 1e-7 e 1e-1: ');
while (p < 1e-7 || p > 1e-1)
  p = input('Valor inváliudo, digite a precisão desejada entre 1e-7 e 1e-1: ');
end
real = pi;
aproximado = 0;
indices = [];
erro = [];
n = 0;
termo = 1;
while(termo >= p) || (termo <= -p)
  termo = 8/((4*n+1)*(4*n+3));
  aproximado += termo;
  erro(n+1) = pi - aproximado;
  indices(n+1) = n+1;
  n += 1;
endwhile
%resultados
printf("Pi aproximado: %f\n", aproximado);
printf("pi real: %f\n", real);
printf("numero de iterações: %d\n", n);
%plot dos erros
figure(1)
plot(indices, erro, 'ok', 'markersize', 12);
grid on
