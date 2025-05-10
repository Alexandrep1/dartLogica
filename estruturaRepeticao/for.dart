void main() {
    /* sintaxe de for

    for (int inicio = 0; condicao; incremento) {
        // bloco de execução do laço
    } 
    
    */

//     exemplo, mostrando apenas números pares:
//     for(int i = 0; i < 100; i++) {
//         if (i % 2 ==0) {
//           print(i);
//         }

// }

    // interrompendo um laço com break:
    // for (int i = 0; i < 100; i++) {
//       if (i == 10) {
//         break;
//       }
//       print(i);
//     }

// }

  // pulando uma execução com continue
  for(int i = 0; i < 1000000; i++) {
    if(i == 4) {
      continue;
    }
    print(i);
  }

}

