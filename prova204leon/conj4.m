%Conjunto 4 - mateus leon 205
while true
  opt = input("\nDigite qual parte do conjunto 4 deseja ver (1, 2, 3 ou 0 para sair): ");
  switch opt
    case 1
      conj4pt1
    case 2
      conj4pt2
    case 3
      conj4pt3
    case 0
      printf("Saindo do conjunto 4.");
      pause(0.2); printf(".");
      pause(0.1); printf(".");
      pause(0.1); printf(".");
      pause(0.1); printf("\n");
      return
    otherwise
      printf("Digite uma opção válida!\n");
  endswitch
endwhile
