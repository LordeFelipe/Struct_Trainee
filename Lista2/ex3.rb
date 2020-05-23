class Person
    # Método de inicialização da instância
    def initialize(name, phone_number,cpf, age)
        @name = name
        @cpf = cpf
        @phone_number = phone_number
        @age = age
    end 

    attr_reader :name,:cpf,:phone_number,:age

    #Método para alterar o número de telefone
    def SetPhoneNumber(new_number)
        @phone_number = new_number
    end

    #Método para mostrar na tela os dados pessoais
    def ShowPersonalData()
        puts "Nome:#{@name}"
        puts "CPF:#{@cpf}" 
        puts "Número de Telefone:#{@phone_number}"
        puts "Idade:#{@age}"  
    end
end

class CurrentAccount < Person
    # Método de inicialização da instância
    @@lista = []
    def initialize(name, phone_number,cpf, age, balance, account_number, password)
        super(name,phone_number,cpf,age)
        @balance = balance
        @account_number = account_number
        @password = password
        @@lista << self
    end 

    attr_reader :balance,:account_number,:password

    def self.lista
        @@lista
    end

    #Método para depositar dinheiro em uma conta bancária
    def DepositMoney(value)
        @balance += value
    end

    #Método para sacar dinheiro de uma conta bancária
    def WithdrawMoney(value)
        if value > @balance
            puts "Não é possível sacar #{value} reais"
        else
            @balance -= value
        end
    end

    #Método para visualizar o saldo da conta bancária
    def GetBalance()
        @balance
    end

    #Método para mostrar os dados da conta bancária
    def ShowBankData()
        puts "Saldo:#{@balance}"
        puts "Número da Conta:#{@account_number}" 
        puts "Senha:#{@password}"  
    end

    #Método para listar as instancias de contas correntes
    def self.ListCurrentAccounts()
        if @@lista.size == 0
            puts "Não há contas corrente disponíveis"
        else
            for i in 0..@@lista.size-1
                @@lista[i].ShowBankData()
                print "\n"
            end
        end
    end
end

class SavingsAccount < Person
    # Método de inicialização da instância
    @@lista = []
    def initialize(name, phone_number,cpf, age, savings, account_number, password)
        
        super(name,phone_number,cpf,age)
        @savings = savings
        @account_number = account_number
        @password = password
        @@lista << self
        
    end 

    attr_accessor :savings,:account_number,:password
    attr_reader :savings,:account_number,:password

    def self.lista
        @@lista
    end

    #Método para depositar dinheiro em uma conta bancária
    def DepositMoney(value)
        @savings += value
    end

    #Método para sacar dinheiro de uma conta bancária
    def WithdrawMoney(value)
        if value > @savings
            puts "Não é possível sacar #{value} reais"
        else
            @savings -= value
        end
    end

    #Método para visualizar o saldo da conta bancária
    def GetBalance()
        @savings
    end

    #Método para mostrar os dados da conta bancária
    def ShowBankData()
        puts "Saldo:#{@savings}"
        puts "Número da Conta:#{@account_number}" 
        puts "Senha:#{@password}"  
    end

    #Método para listar as instancias de contas poupança
    def self.ListSavingsAccounts()
        if @@lista.size == 0
            puts "Não há poupanças disponíveis"
        else
            for i in 0..@@lista.size-1
                @@lista[i].ShowBankData()
                print "\n"
            end
        end
    end
end

#Método para dar display do menu das operações com a conta bancária
def AccountsMenu(myaccount)
    loop do
        puts "------------------------------"
        puts "1-Depositar"
        puts "2-Sacar"
        puts "3-Exibir Saldo"
        puts "4-Modificar Telefone"
        puts "5-Exibir dados pessoais"
        puts "6-Exibir dados da conta"
        puts "7-Sair"
        print "------------------------------\n"
        print "Insira o número da operação que deseja efetuar: "
        
        input = gets.to_i
        print "------------------------------\n"   
        case input
        when 1
            print "Insira o valor do depósito: "
            value = gets.to_i
            myaccount.DepositMoney(value)
        when 2
            print "Insira o valor do saque: "
            value = gets.to_i
            myaccount.WithdrawMoney(value)
        when 3
            puts "O saldo da conta é #{myaccount.GetBalance()}"
        when 4
            print "Insira o novo número de telefone: "
            new_number = gets.to_i
            myaccount.SetPhoneNumber(new_number)
        when 5
            myaccount.ShowPersonalData()
        when 6
            myaccount.ShowBankData()
        when 7
            break
        end
    end
end

loop do
    puts "------------------------------"
    puts "1-Listar Contas Corrente"
    puts "2-Listar Contas Poupança"
    puts "3-Criar Conta Corrente"
    puts "4-Criar Conta Poupança"
    puts "5-Acessar Conta"
    puts "6-Sair"
    print "------------------------------\n"
    print "Insira o número da operação que deseja efetuar: "
    
    input = gets.to_i
    print "------------------------------\n"   
    case input
    when 1
        CurrentAccount.ListCurrentAccounts()
    when 2
        SavingsAccount.ListSavingsAccounts()
    when 3
        puts "Insira seu nome"
        nome = gets
        puts "Insira seu numero"
        numero = gets
        puts "Insira seu CPF"
        cpf = gets
        puts "Insira sua idade"
        idade = gets.to_i
        puts "Insira o número da conta"
        conta = gets
        puts "Insira a senha"
        senha = gets
        CurrentAccount.new(nome,numero,cpf,idade,0,conta,senha)
    when 4
        puts "Insira seu nome"
        nome = gets
        puts "Insira seu numero"
        numero = gets
        puts "Insira seu CPF"
        cpf = gets
        puts "Insira sua idade"
        idade = gets.to_i
        puts "Insira o número da conta"
        conta = gets
        puts "Insira a senha"
        senha = gets
        SavingsAccount.new(nome,numero,cpf,idade,0,conta,senha)
    when 5
        index = 0

        for i in 0..CurrentAccount.lista.size()-1
            index += 1
            puts "id = #{index}"
            CurrentAccount.lista[i].ShowBankData()
            print "\n"
        end
        for i in 0..SavingsAccount.lista.size()-1
            index += 1
            puts "id = #{index}"
            SavingsAccount.lista[i].ShowBankData()
            print "\n"
        end

        print "Insira o id da conta que deseja acessar:"
        conta_id = gets.to_i

        #Conta desejada é uma conta corrente
        if conta_id <= CurrentAccount.lista.size()
            myaccount = CurrentAccount.lista[conta_id-1]
            AccountsMenu(myaccount)
        #Conta desejada é uma conta poupança
        elsif conta_id <= SavingsAccount.lista.size() + CurrentAccount.lista.size()
            myaccount = SavingsAccount.lista[conta_id-CurrentAccount.lista.size()-1]
            AccountsMenu(myaccount)
        else
            puts "Essa conta não existe"
        end
    when 6
        break
    end

end