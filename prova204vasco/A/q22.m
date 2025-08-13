% Questao 2.2 - Prova A da 204
% Lucas Vasconcelos Resende - 205B

opcao = 1;
while (opcao != 0)
  printf("escolha qual script quer ver:\n1. Melhor polinomio\n2. Aproximação linear em 3 intervalos\n");
  opcao = input('digite o exercício ou 0 para sair:  ');
  close all;
  dados = load('EspectroscopiaX.dat');
  energia = dados(1,:); %energia de ligação (x)
  eletrons = dados(2,:); %numero de eletrons (y)
  switch(opcao)
    case 1 %primeiro script
      %(1)
      figure(1)
      plot(energia,eletrons)
      %(2) / (4)
      n = length(energia);
      vetorerromedio = zeros(1, 5);
      armazem = cell(1, 5); %precisa ser cell, para armazenar vetores
      for ordem = 1:5
        p = polyfit(energia, eletrons, ordem);
        novoy = polyval(p, energia);
        %calculo erro médio
        soma = 0;
        for i = 1:n
          termo = abs(eletrons(i) - novoy(i));
          soma += termo;
        endfor
        erromedio = soma/n;
        vetorerromedio(ordem) = erromedio;
        armazem{ordem} = p;
      endfor
      melhorordem = 1;
      menor = vetorerromedio(1);
      for k = 2:5
        if (vetorerromedio(k) < menor)
          menor = vetorerromedio(k);
          melhorordem = k;
        endif
      endfor
      melhor = armazem{melhorordem};
      printf("A melhor função que representa os dados é de ordem %d\n", melhorordem);
      printf("F(x) = ");
      for i = 1:length(melhor)
        printf("%f ", melhor(i));
      endfor
      printf("\n");
      %(3)
      x2 = linspace(min(energia), max(energia),200); %coloca 200 pontos entre o (energia) minimo e maximo
      y2 = polyval(melhor, x2);
      figure(2)
      hold on
      plot(energia, eletrons, 'ok', 'markersize', 10);
      plot(x2, y2);
      grid on
    case 2 %segundo script
      %(1)
      %definição
      n = length(energia);
      terco = floor(n/3) %floor arredonda o valor caso o resultado da divisão seja quebrado
      intervalo1 = 1:terco;
      intervalo2 = terco+1:2*terco;
      intervalo3 = terco*2+1:n;
      %polyfit
      poli1 = polyfit(energia(intervalo1), eletrons(intervalo1), 1);
      poli2 = polyfit(energia(intervalo2), eletrons(intervalo2), 1);
      poli3 = polyfit(energia(intervalo3), eletrons(intervalo3), 1);
      %polyval
      sy1 = polyval(poli1, energia(intervalo1)); %declarei como sy1, porcausa das variaveis do primeiro script
      sy2 = polyval(poli2, energia(intervalo2));
      sy3 = polyval(poli3, energia(intervalo3));
      %(2)
      figure(3)
      hold on
      plot(energia, eletrons, 'ok', 'markersize', 10);
      plot(energia(intervalo1),sy1);
      plot(energia(intervalo2),sy2);
      plot(energia(intervalo3),sy3);
      xlabel("Energia de ligação (eV)")
      ylabel("Número de elétrons")
      grid on
  endswitch
endwhile
