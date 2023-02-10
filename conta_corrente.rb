require_relative 'conta'

class ContaCorrente < Conta
    attr_accessor :limite 
    def initialize(numero, titular, saldo, limite)
      super(numero, titular, saldo)
      @limite = limite 

      #modo mais fácil de herdar da classe conta, falando pra herdar do pai 
      #@numero =  numero
      #@titular = titular
      #@saldo = saldo
      
    end
    def sacar(valor)
        #aqui a mudança foi adicionar o limite 
        #alem do saldo para fazer as transações
        if (saldo + limite) >= valor
          @saldo -= valor
        else
          puts "Não foi possível executar saque."
        end
    end
end