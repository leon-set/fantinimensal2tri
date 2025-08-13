% Questao 1.3 - Prova B da 204
% Lucas Vasconcelos Resende - 205B

%pegar o arquivo de dados
dados = load('FuncaoQuadraticaExperimento03.dat');
tempo = dados(:,1); %tempo (minutos)
altura = dados(:,2);%altura (metros)
%(1) plotar sem uni-los
figure(1)
plot(tempo, altura, 'bo');
grid on
%(2) encontrar a funcao que melhor ajuste os dados
p = polyfit(tempo,altura,2)
%funcao quadratica com melhor ajuste
printf("Polinomio: %f*t^2 + %f*t + %f\n", p(1),p(2),p(3));
%(3) encontrar funcoes afins(f(x) = ax +b) que aproximem os dados em partes lineares.
n = length(tempo);
idx1 = 1:(n/3);
idx2 = (n/3):(2*n/3);
idx3 =  (2*n/3):n;
%ajustar reta pra cada intervalo
p1 = polyfit(tempo(idx1), altura(idx1), 1);
p2 = polyfit(tempo(idx2), altura(idx2), 1);
p3 = polyfit(tempo(idx3), altura(idx3), 1);
%print das funcoes
printf('Intervalo 1: y = %.4f*t + %.4f\n', p1(1), p1(2));
printf('Intervalo 2: y = %.4f*t + %.4f\n', p2(1), p2(2));
printf('Intervalo 3: y = %.4f*t + %.4f\n', p3(1), p3(2));
%(4) criar outra figura e plotar os dados originais e a tres funcoes afins encontradas
figure(2)
hold on
plot(tempo, altura, 'bo');
% curvas afins em cada intervalo
plot(tempo(idx1), polyval(p1, tempo(idx1)), 'r-', 'LineWidth', 2);
plot(tempo(idx2), polyval(p2, tempo(idx2)), 'g-', 'LineWidth', 2);
plot(tempo(idx3), polyval(p3, tempo(idx3)), 'm-', 'LineWidth', 2);
xlabel('t (min)');
ylabel('h (m)');
grid on
