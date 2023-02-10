class Cliente
    attr_reader :nome, :sobrenome
    attr_accessor :saldo
     
    def initialize(nome, sobrenome)
        @nome = nome
        @sobrenome = sobrenome
    end
end