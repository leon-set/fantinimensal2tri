%Conjunto 5 - Mateus Leon 205
while true
  opt = input("\nDigite qual parte do conjunto 3 deseja ver (1, 2, 3 ou 0 para sair): ");
  switch opt
    case 1
      conj5pt1
    case 2
      conj5pt2
    case 3
      #conj5pt3
    case 0
      printf("Saindo do conjunto 3.");
      pause(0.2); printf(".");
      pause(0.1); printf(".");
      pause(0.1); printf(".");
      pause(0.1); printf("\n");
      return
    otherwise
      printf("Digite uma opção válida!\n");
  endswitch
endwhile
