/* 
SRP -> SINGLE RESPONSIBILITY PRINCIPLE
 */

/*
- Violando o princípio SRP: 
- Neste exemplo a classe RelatorioService tem duas responsabilidades: gerar e enviar relatório
*/
class RelatorioService {

    void gerarRelatorio() {
        print("Relatório Gerado!");
    }

    void enviarRelatorio() {
        print("E-mail Enviado!");
    }
}

/* 
- Solução respeitando o princípio SRP:
- Separamos as responsabilidades: uma classe gera o relatório, enquanto a outra classe apenas o envia
 */
class RelatorioGerador{

    void gerarRelatorio() {
        print("Relatório Gerado!");
    }
}

class RelatorioEnviador{

    void enviarRelatorio() {
        print("Relatório Enviado!");
    }
}