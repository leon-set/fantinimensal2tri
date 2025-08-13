% Questao 5.2 - Prova B da 204
% Lucas Vasconcelos Resende - 205B

t = [0, 5, 10, 15, 20];
q = [0.6350, 0.5336, 0.4410, 0.3572, 0.2822];
%(1)
p = polyfit(t, log(q), 1);
%q(t)=aebt
%lnq(t)=ln(a)+bt
%y=mt+c
%y=lnq(t)
%m=b (o coeficiente angular)
%c = ln (a) (o intercepto)
a = exp(p(2));
b = p(1);
printf("A funcao que melhor representa a relação entre q e t é:\n\n");
printf("q(t) = %f * e^(%f * t)\n\n", a, b);
qt = @(x) a*exp(x * b);
%(2)
deltat = 1e-5;%é um numero muito pequeno pra aproximar o máximo possivel da derivada
%já que em teoria deveria ser 0, mas não dá pra dividir por 0
derivada = @(x)(qt(x+deltat)-qt(x))./deltat;
printf("Derivada usando valor numérico em cada t:\n\n");
disp(derivada(t))
%(3)
R = 1;
r = 0.1;
g = 9.81;
ganma = 0.6;
torriceli = @(x)-ganma*(r/R)^2.*sqrt(2*g*qt(x));
printf("Derivada usando Torricelli em cada t:\n\n");
disp(torriceli(t));
