% Questao 2.2 - Prova B da 204
% Lucas Vasconcelos Resende - 205B

opcao = 1;
while (opcao != 0)
  printf("1. Questão 1\n2. Questão 2\n3. Questão 3\n");
  opcao = input('digite o exercício ou 0 para sair:  ');
  close all
  % y = gramas
  vy = [246.65996631, 210.72802683, 181.02127318, 148.34234454, 130.7382252,128.5600246, 106.30085882, 92.41477109, 86.5911274, 75.44131736,60.96171999, 62.01368886];
  % x = tempo(meses)
  t = (1:12);
  switch(opcao)
    case 1
      figure(1)
      plot(t,vy,'or', 'markersize',8)
      grid on
    case 2
      %logaritimo natural dos dados
      lognat = log(vy);
      %regressão linear
      p = polyfit(t, lognat, 1); %p(2) = lambda, p(2) = ln(A)
      lambda = p(1);
      A = exp(p(2));
      printf("Ajuste exponencial: f(t) = %f * exp(%f * t)\n", A, lambda);
      t_vetor = linspace(1, 12, 100);
      y = A * exp(lambda * t_vetor);
      figure(2)
      plot(t_vetor, y);
      grid
      xlabel('tempo (meses)')
      ylabel('massa (gramas)')
    case 3
      lognat = log(vy);
      p = polyfit(t, lognat, 1); %p(2) = lambda, p(2) = ln(A)
      lambda = p(1);
      A = exp(p(2));
      t_vetor = linspace(1, 12, 100);
      y = A * exp(lambda * t_vetor);
      figure(3)
      plot(t,vy,'or', 'markersize',8)
      hold on
      plot(t_vetor, y);
      grid
      xlabel('tempo (meses)')
      ylabel('massa (gramas)')
  endswitch
endwhile
