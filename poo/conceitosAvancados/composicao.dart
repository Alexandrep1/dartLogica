/* 
    * COMPOSIÇÃO:
        - tipo de agregação mais forte
        - as partes não existem sem o todo
        - indica uma dependência de ciclo de vida
        * EXEMPLO 01:
            - casa é composta por cômodos, se a casa é destruída, os cômodos também são
            - os cômodos nascem e morrem com a casa. Isso é composição!  
        * EXEMPLO 02:
            - um pedido contém uma lista de produtos. Em vez de herança usamos composição
              porque um pedido tem produtos, mas não é um produto.       
 */

// Aplicando Exemplo 01:
class Comodo {
    String nome;
    Comodo(this.nome);
}

class Casa {
    List<Comodo> comodos = [];

    Casa() {
        comodos = [
            Comodo("Sala"),
            Comodo("Quarto")
        ];
    }
}

class Produto {
    final String nome;
    final double preco;
    Produto(this.nome, this.preco);
}

class Pedido {
    final List<Produto> itens = [];

    void adicionarProduto(Produto produto) {
        itens.add(produto);
    }

    double calcularTotal() {
        double total = 0;
        for(var produto in itens) {
            total += produto.preco;
        }
        return total;
    }

    void mostrarResumo() {
        print("Resumo do pedido");

        for(var produto in itens) {
            print("Produto: ${produto.nome} | Valor: ${produto.preco}");
        }
        print("Total do pedido: ${calcularTotal()}");
    }
}

void main(List<String> args) {
    Produto p1 = Produto("Camisa", 145);
    Produto p2 = Produto("Bermuda", 50);

    Pedido pedido = Pedido();
    pedido.adicionarProduto(p1);
    pedido.adicionarProduto(p2);

    pedido.mostrarResumo();
}
