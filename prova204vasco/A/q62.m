% Questao 6.2 - Prova A da 204
% Lucas Vasconcelos Resende - 205B

clear;
clc;
opcao = 1;
while (opcao ~= 0)
  printf("1. Questão 1 e 2\n2. Questão 3\n");
  opcao = input('Digite o exercício ou 0 para sair:  ');
  close all
  switch(opcao)
    case 1
      % (1) / (2)
      n = input('Digite o valor de n (>=4):  ');
      while (n < 4)
        n = input('VALOR INVALIDO, digite novamente (>=4):  ');
      endwhile
      x = linspace(-5,5,300);
      f0 = [0]; % F0(x) = 0
      f1 = [1]; % F1(x) = 1
      for i = 2:n
        f1x = [f1, 0]; % multiplicar por x (zero no final)
        % ajustar tamanhos para soma
        diftam = length(f1x) - length(f0);
        if diftam > 0
          f0 = [zeros(1, diftam), f0];
        else
          f1x = [zeros(1, -diftam), f1x];
        endif
        f = f1x + f0;
        f0 = f1;
        f1 = f;
      endfor
      disp(f);
      y = polyval(f, x);
      figure(1, 'Name', 'Questao 6.2')
      hold on
      grid on
      plot(x, y)
      % Mostrar polinômio original
      printf("Polinômio da %d-ésima posição:\n", n);
      grau = length(f) - 1;
      for i = 1:length(f)
        if f(i) ~= 0
          if grau == 0
            printf("%.4f", f(i));
          elseif grau == 1
            printf("%.4fx + ", f(i));
          else
            printf("%.4fx^%d + ", f(i), grau);
          endif
        endif
        grau = grau - 1;
      endfor
      printf("\n");
      % Aproximação polinomial
      m = n-2;
      p = polyfit(x, y, m);
      yaprox = polyval(p, x);
      plot(x, yaprox)
      printf("Polinômio ajustado de ordem %d:\n", m);
      grau2 = m;
      for i = 1:length(p)
        if p(i) ~= 0
          if grau2 == 0
            printf("%.4f", p(i));
          elseif grau2 == 1
            printf("%.4fx + ", p(i));
          else
            printf("%.4fx^%d + ", p(i), grau2);
          endif
        endif
        grau2 = grau2 - 1;
      endfor
      printf("\n");
    case 2
      % (3)
      figure(2, 'Name', 'Questao 6.2')
      hold on
      grid on
      x = linspace(-1,1,500);
      f0 = [0];
      f1 = [1];
      for i = 1:5
        f1x = [f1, 0]; % multiplicar por x
        diftam = length(f1x) - length(f0);
        if diftam > 0
          f0 = [zeros(1, diftam), f0];
        else
          f1x = [zeros(1, -diftam), f1x];
        endif
        f = f1x + f0;
        f0 = f1;
        f1 = f;
        y = polyval(f, x);
        plot(x, y)
      endfor
  endswitch
endwhile
