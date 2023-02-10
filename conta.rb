require_relative 'cliente'

class Conta
  attr_reader :numero, :titular
  attr_accessor :saldo

    def initialize(numero, titular, saldo)
      @numero = numero
      @titular = titular
      @saldo = saldo
    end 

    def sacar(valor)
    if saldo >= valor
      @saldo -= valor
    else
      puts "Não foi possível executar saque."
    end
    end

    def depositar(valor)
      @saldo += valor
      end
     # na primeira linha criei um deff com a condição de transferir e 
     #passei os argumentos entre parêntesis  
      def transferir(conta_destino, valor)
         if saldo >= valor           
            sacar(valor)
            conta_destino.depositar(valor)
            puts "Transferencia realizada com sucesso."
         elsif
          @saldo -= valor
          puts "Sem saldo suficiente para realizar tranferência."
        end
      end
end

