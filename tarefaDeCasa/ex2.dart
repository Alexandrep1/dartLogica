/* Associação + DIP + Baixo Acoplamento
Implemente uma classe Relatorio que dependa de uma interface Exportador para 
exportar os dados. Crie duas implementações: ExportadorCSV e 
ExportadorPDF. O Relatorio não deve depender diretamente das classes concretas. */

abstract class Exportador {
  void exportandoDados(String dados) {
  }
}

class Relatorio {
  
  final Exportador exportador;
  Relatorio(this.exportador);

  void gerarRelatorio(String dados){
    print("gerando relatório...");
    exportador.exportandoDados(dados);
  }
}

class ExportadorCSV implements Exportador {

  @override
  void exportandoDados(String dados) {
    print("exportando dados para CSV: $dados");
  }
}

class ExportadorPDF implements Exportador {
  @override
  void exportandoDados(String dados) {
    print("Exportando dados para pdf: $dados");
  }
}

void main(List<String> args) {
  
var relatorioPDF = Relatorio(ExportadorPDF());
relatorioPDF.gerarRelatorio("dados do relatorio em pdf");

var relatorioCSV = Relatorio(ExportadorCSV());
relatorioCSV.gerarRelatorio("dados do relatorio em csv");

}
