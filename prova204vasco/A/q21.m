% Questao 2.1 - Prova A da 204
% Lucas Vasconcelos Resende - 205B

load('jurosExponenciais.mat');
t = juros(:,1) %tempo em minutos
A = juros(:,2) %valor obtido com a aplica ̧c ̃ao no per ́ıodo de tempo dado
figure(1, 'Name', 'Questao 2.1');
hold on;
plot(t, A, 'ok', 'Markersize', 10);
%(2)
%linearização = ln(A) = ln(A0^rt) = ln(A0)+rt
%transformar em y=mx+b
%y=ln(A),
%m=r (a taxa de crescimento anual),
%x=t,
%b=ln(A0) (o logaritmo do valor inicial).
lnA = log(A);
p = polyfit(t, lnA, 1);
r = p(1);
lnA0 = p(2);
A0 = exp(lnA0);
Aajuste = A0*exp(r*t);
printf("A variavel r e: %f\n", r);
printf("A variavel A0 e: %f\n", A0);
plot(t, Aajuste);
grid on;

