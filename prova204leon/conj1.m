%Conjunto 1 - Mateus Leon 205

pi1 = 0;
erro1 = 1;
pi2 = 0;
erro2 = 1;
%questao1.2
pi3 = 4;
erro3 = 1;

printf("Quanto mais próximo de 0, maior a precisão.\n");
precisao = input('Digite a precisão para calcular pi: ');

k = 0; i = 1;
while erro1 > precisao %continuar até o erro ficar estipulado pela precisão
  sum =sqrt(12) * ((-3)^(-k)) / ((2*k)+1); %equaçao1
  pi1 += sum;
  dev_pi1(i) = pi1;
  k++;

  erro1 = pi - pi1;
  if erro1 < 0
        erro1 *= -1;
    end
  vetorerro1(i) = erro1;
  i++;

endwhile
k = 0; i = 1;
while erro2 > precisao
    somainv = (2 * sqrt(2) / 9801) * ((factorial(4*k)*(1103+2639*k)) / ((factorial(k))^4 * 396^(4*k)));
    soma2 = inv(somainv);
    pi2 += soma2;
    dev_pi2(i) = pi2;
    k++;

    erro2 = pi - pi2;
      if erro2 < 0
        erro2 *= -1;
    end
    vetorerro2(i) = erro2;
    i++;
end
i = 1;
while erro3 > precisao
    soma3 = (4/(1+i*2))*(-1)^i;
    pi3 += soma3;
    dev_pi3(i) = pi3;

    erro3 = pi - pi3;
      if erro3 < 0
        erro3 *= -1;
    end
    vetorerro3(i) = erro3;
    i++;
end
opt = input("Mostrar desenvolvimento da 1a aproximação de pi? (s/n): ", "s");
if opt == "s" || opt == "S"
printf("Desenvolvimento da 1a aproximação de pi:\n")
for i = 1:length(dev_pi1)
  printf("%d ", dev_pi1(i));
endfor
printf("\n")
endif
opt = input("Mostrar desenvolvimento da 2a aproximação de pi? (s/n): ", "s");
if opt == "s" || opt == "S"
printf("Desenvolvimento da 2a aproximação de pi:\n")
for i = 1:length(dev_pi2)
  printf("%d ", dev_pi2(i));
endfor
printf("\n")
endif
opt = input("Mostrar desenvolvimento da 3a aproximação de pi? (s/n): ", "s");
if opt == "s" || opt == "S"
printf("Desenvolvimento da 3a aproximação de pi:\n")
for i = 1:length(dev_pi3)
  printf("%d ", dev_pi3(i));
endfor
printf("\n")
endif
printf("\n\n1a aproximação de pi: %d\n", pi1)
printf("2a aproximação de pi: %d\n", pi2)
printf("3a aproximação de pi: %d\n", pi3)

figure(1, 'Name', '1 - Evolução dos erros nas aproximações de pi')
subplot(2, 2, 1)
stem(vetorerro1, 'MarkerSize', 2);
xlabel("Iteração")
axis padded
grid minor on
title('Erro na 1ª aproximação')

subplot(2, 2, 2)
stem(vetorerro2, 'MarkerSize', 2);
xlabel("Iteração")
axis padded
grid minor on
title('Erro na 2ª aproximação')

subplot(2, 2, 3)
stem(vetorerro3, 'MarkerSize', 2);
xlabel("Iteração")
axis padded
grid on
title('Erro na 3ª aproximação')
