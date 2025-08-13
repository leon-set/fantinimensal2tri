%Prova204 - Mateus Leon 105
clear;
clc;
optmenu = 1;
while optmenu != 0
  printf("Conjuntos disponíveis:\n");
  cabecalho;

  %esse clear descarta as variáveis usadas no último conjunto
  clear;
  optmenu = input('Digite o número do conjunto que deseja ver (Ou 0 para sair): ');
  switch optmenu
    case 1
      clc;
      close all;
      printf("\n===== Conjunto 1 =====\n");
      conj1
      printf("\n=== Fim do Conjunto 1 ===\n");
    case 2
      clc;
      close all;
      printf("\n===== Conjunto 2 =====\n");
      conj2
      printf("\n=== Fim do Conjunto 2 ===\n");
    case 3
      clc;
      close all;
      printf("\n===== Conjunto 3 =====\n");
      conj3
      printf("\n=== Fim do Conjunto 3 ===\n");
    case 4
      clc;
      close all;
      printf("\n===== Conjunto 4 =====\n");
      conj4
      printf("\n=== Fim do Conjunto 4 ===\n");
    case 5
      clc;
      close all;
      printf("\n===== Conjunto 5 =====\n");
      conj5
      printf("\n=== Fim do Conjunto 5 ===\n");
    case 6
      clc;
      printf("\n===== Conjunto 6 =====\n");
      conj6
      printf("\n=== Fim do Conjunto 6 ===\n");
    case 7
      clc;
      close all;
      printf("\n===== Conjunto 7 =====\n");
      conj7
      printf("\n=== Fim do Conjunto 7 ===\n");
    case 0
      printf("Encerrando.");
      pause(0.5); printf(".");
      pause(0.4); printf(".");
      pause(0.3); printf(".");
      pause(0.2); printf("\n");
      return
    otherwise
    printf("Opção inválida.\n");
  endswitch

endwhile

