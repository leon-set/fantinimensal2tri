%Conjunto 6 - Mateus Leon 205
while true
  opt = input("\nDigite qual parte do conjunto 6 deseja ver (1, 2 ou 0 para sair): ");
  switch opt
	case 1
  	conj6pt1
	case 2
  	conj6pt2
	case 0
  	printf("Saindo do conjunto 6.");
  	pause(0.2); printf(".");
  	pause(0.1); printf(".");
  	pause(0.1); printf(".");
  	pause(0.1); printf("\n");
  	return
	otherwise
  	printf("Digite uma opção válida!\n");
  endswitch
endwhile

