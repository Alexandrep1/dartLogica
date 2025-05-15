class CalculadoraFinanceira {

    //exemplo com alta coesão
    double calcularJuros(double valor, double taxa) => valor * taxa;
    double converterMoeda(double valor, double taxaCambio) => valor * taxaCambio;
}


//exemplo com baixa coesão (faz muita coisa) 
class CalculadoraBaguncada{
  void autenticarUsuario() => print("autenticado");
  double calcular() => 42;
  bool salvarArquivo() => true;
}