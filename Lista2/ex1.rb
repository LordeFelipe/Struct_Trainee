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
            print "---------------\n"
            puts "Nome:#{@name}"
            puts "CPF:#{@cpf}" 
            puts "Número de Telefone:#{@phone_number}"
            puts "Idade:#{@age}"  
            print "---------------\n\n"
        end

        #Método para mostrar os dados da conta bancária
        def ShowBankData()
            print "---------------\n"
            puts "Saldo:#{@balance}"
            puts "Número da Conta:#{@account_number}" 
            puts "Senha:#{@password}"  
            print "---------------\n\n"
        end
    end

    #Inicialização
    myaccount = BankAccount.new("flip","99706-2643","057.851.512-84",21,650,12578,"teste123")

    #Saque de valor grande demais
    myaccount.WithdrawMoney(700)
    puts "O saldo da conta é #{myaccount.GetBalance()}"

    #Depósito na conta
    myaccount.DepositMoney(100)
    puts "O saldo da conta é #{myaccount.GetBalance()}"

    #Saque de valor possível
    myaccount.WithdrawMoney(700)
    puts "O saldo da conta é #{myaccount.GetBalance()}"

    #Visualização dos dados pessoais e alteração do número de celular
    myaccount.ShowPersonalData()
    myaccount.SetPhoneNumber("98989-7878")
    myaccount.ShowPersonalData()

    #Visualização dos dados bancários
    myaccount.ShowBankData()