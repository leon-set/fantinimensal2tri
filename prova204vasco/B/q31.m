% Questao 3.1 - Prova B da 204
% Lucas Vasconcelos Resende - 205B

opcao = 1;
while (opcao != 0)
  printf("1. (a) poligono inscrito\n2. (b) poligono circunscrito\n0. (c) sair\n");
  opcao = input('digite o exercício ou 0 para sair:  ');
  close all

  switch(opcao)
    case 1
      %Poligono inscrito
      printf("\n========================\n   Poligono inscrito    \n========================\n");
      n = input('Digite o numero de lados, maior que 2:  ');
      while (n <= 2)
        n = input('Opcao invalida, digite o numero de lados, maior que 2:  ');
      endwhile
      raio = input('Digite o raio da circunferencia:  ');
      x0 = input('Digite a coordenada x do centro: ');
      y0 = input('Digite a coordenada y do centro: ');
      %cicunferencia
      theta = linspace(0, 2*pi, 100);
      xc = x0 + raio * cos(theta);
      yc = y0 + raio * sin(theta);
      %poligono
      poli = linspace(0, 2*pi, n+1); %n+1 para fechar o poligono
      xp = y0 + raio * cos(poli);
      yp = y0 + raio * sin(poli);
      %plot
      figure(1)
      plot(xc,yc);
      hold on
      plot(xp,yp);
      axis equal;
    case 2
      %poligono circunscrito
      printf("\n========================\n    Poligono circunscrito    \n========================\n");
      n = input('Digite o numero de lados, maior que 2:  ');
      while (n <= 2)
        n = input('Opcao invalida, digite o numero de lados, maior que 2:  ');
      endwhile
      raio = input('Digite o raio da circunferencia:  ');
      x0 = input('Digite a coordenada x do centro: ');
      y0 = input('Digite a coordenada y do centro: ');
      %circunferencia
      theta = linspace(0, 2*pi, 100);
      xc = x0 + raio * cos(theta);
      yc = y0 + raio * sin(theta);
      %poligono
      %para ser circunscrito, a distancia do centro até os lados é R, com relações trigonométricas
      R = raio / cos(pi/n);
      poli = linspace(0, 2*pi, n+1); %n+1 para fechar o poligono
      xp = y0 + R * cos(poli);
      yp = y0 + R * sin(poli);
      %plot
      figure(1)
      plot(xc,yc);
      hold on
      plot(xp,yp);
      axis equal;
  endswitch
endwhile
