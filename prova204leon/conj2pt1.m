%Conjunto 2.1 - Mateus Leon
arq = load("jurosExponenciais.mat");
t = arq.juros(:, 1);
currentval = arq.juros(:, 2);

figure(1, 'Name', 'Juros exponenciais')
hold on
plot(t, currentval, 'ob', 'MarkerSize', 2);

#A = A0e^rt
%(2)
%linearização = ln(A) = ln(A0^rt) = ln(A0)+rt
%transformar em y=mx+b
%y=ln(A),
%m=r (a taxa de crescimento anual),
%x=t,
%b=ln(A0) (o logaritmo do valor inicial).

#A = rt+ln(A0)

lnA = log(currentval);
#isso dá ln(A0^rt)

p = polyfit(t, lnA, 1);
#polinomio ajustado para (t, ln(A0^rt), 1) é rt+ln(A0)
r = p(1);
lnA0 = p(2);

A0 = exp(lnA0);
A = A0*exp(r*t);
printf("Variável r: %f\n", r);
printf("Variável A0: %f\n", A0);
plot(t, A);
xlabel('T - Tempo em anos')
ylabel('A - Juros acumulado')
grid on;


