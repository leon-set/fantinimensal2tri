% Questao 2.1 - Prova B da 204
% Lucas Vasconcelos Resende - 205B

%1
t_data = [10 20 30 40 50 60];
c_data = [3.4 2.6 1.6 1.3 1.0 0.5];
t = linspace(0, 70, 300);
c = 4.84*exp(-0.034*t);
p = polyfit(t_data,c_data,1);
printf("Polinomio: %f*t + %f\n", p(1),p(2));
figure(1)
hold on
plot(t_data,c_data, 'sk', 'markersize', 10)
plot(t,c)
title('Fotodegradação do Bromo: dados e modelo exponencial');
xlabel('t (min)');
ylabel('c (ppm)');
grid on
%2
p2 = polyfit(t_data,c_data,2);
novoy = polyval(p2,t);
figure(2)
hold on
plot(t_data,c_data, 'sk', 'markersize', 10)
plot(t,novoy)
title(sprintf('Ajuste polinomial de grau 2 aos dados'));
xlabel('t (min)');
ylabel('c (ppm)');
grid on
%3
figure(3)
hold on
semilogy(t_data, c_data, 'sk', 'markersize', 10)
semilogy(t,c)
title('Fotodegradação do Bromo: semilogy');
xlabel('t (min)');
ylabel('c (ppm) (escala log)');
grid on
