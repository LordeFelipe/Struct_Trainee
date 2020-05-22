class BankAccount
    # Método de inicialização da instância
    def initialize(name, phone_number,cpf, age, balance, account_number, password)
        @name = name
        @cpf = cpf
        @phone_number = phone_number
        @age = age
        @balance = balance
        @account_number = account_number
        @password = password
    end 

    attr_reader :name,:cpf,:phone_number,:age,:balance,:account_number,:password

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

    #Método para mostrar os dados da conta bancária
    def ShowBankData()
        puts "Saldo:#{@balance}"
        puts "Número da Conta:#{@account_number}" 
        puts "Senha:#{@password}"  
    end
end

#Inicialização
myaccount = BankAccount.new("flip","99706-2643","057.851.512-84",21,0,12578,"minhasenhaehboa")

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