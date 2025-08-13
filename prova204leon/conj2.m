%Conjunto 2 - Mateus Leon 205
while true
  opt = input("\nDigite qual parte do conjunto 2 deseja ver (1, 2 ou 0 para sair): ");
  switch opt
    case 1
      conj2pt1
    case 2
      conj2pt2
    case 0
      printf("Saindo do conjunto 2.");
      pause(0.2); printf(".");
      pause(0.1); printf(".");
      pause(0.1); printf(".");
      pause(0.1); printf("\n");
      return
    otherwise
      printf("Digite uma opção válida!\n");
  endswitch
endwhile
