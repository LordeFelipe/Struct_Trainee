class Aluno
    def initialize()
        @matricula = rand(200000000)
        @notas = rand(10.0)
    end

    attr_reader :matricula, :notas
end

class Turma

    #A inicialização de uma turma cria de 5 a 20 alunos aleatórios
    def initialize()
        @alunos = []
        @n_alunos = rand(5..20)
        for i in 1..n_alunos
            @alunos.push(Aluno.new)
        end
    end
    attr_reader :alunos, :n_alunos

    #Retorna o número de alunos aprovados em uma turma
    def Aprovados
        n_aprovados = 0
        for i in 0..alunos.size-1
            @alunos[i].notas >= 5 ? n_aprovados +=1 : n_aprovados = n_aprovados
        end        
        return(n_aprovados)
    end
end

class Materia
    
    def initialize(nome)
        @turmas = []
        @nome = nome
        @n_turmas = 0
    end

    attr_reader :nome, :n_turmas, :turmas

    #Cria uma turma nova na matéria
    def Adicionar_Turma
        @n_turmas += 1
        @turmas.push(Turma.new)
    end
    
    #Retorna o número total de aprovados em uma matéria
    def N_Aprovados
        n_aprovados = 0
        for i in 0..@turmas.size-1
            n_aprovados += @turmas[i].Aprovados
        end
        n_aprovados
    end

    #Retorna o número total de alunos em uma matéria
    def N_Alunos
        n_alunos = 0
        for i in 0..@turmas.size-1
            n_alunos += @turmas[i].n_alunos
        end
        n_alunos
    end
end

nomes_materias = ["Cálculo 1", "Cálculo 2", "Cálculo 3", "Física 1", "Física 2", 
    "Estruturas de Dados" ,"Algoritmos e Programação de Computadores","Técnicas de Programação 1","Sistemas Digitais","Eletromagnetismo"]
    n_turmas = 0
loop do
    puts "Insira o número de turmas"
    n_turmas = gets.to_i
    if n_turmas <= 10 || n_turmas >= 1
        break
    end
end

materias = Hash.new
#Criando Hash de materias
for i in 0..n_turmas-1
    #Matéria selecionada randomicamente
    materia_rand_nome = nomes_materias[rand(0..nomes_materias.size-1)]
    
    #Matéria já tem ao menos uma turma
    if materias.has_key?(materia_rand_nome)
        materias[materia_rand_nome].Adicionar_Turma
    #Matéria ainda não existe nesse semestre
    else
        materias[materia_rand_nome] = Materia.new(materia_rand_nome)
        materias[materia_rand_nome].Adicionar_Turma
    end    
end

n_alunos = 0
n_aprovados = 0
materias.each do |key, materia|
    n_alunos += materia.N_Alunos
    n_aprovados += materia.N_Aprovados
    puts "-------------------"
    puts materia.nome
    puts "Número de turmas: #{materia.n_turmas}"
    puts "Número de alunos: #{materia.N_Alunos}"
    puts "Número de aprovados: #{materia.N_Aprovados}"
    puts "Porcentagem de aprovados: #{(100*materia.N_Aprovados.to_f/materia.N_Alunos.to_f).round(3)}%"
    puts "-------------------"
    print "\n"
end

puts "Total de Alunos aprovados em todas as materias: #{(100*n_aprovados.to_f/n_alunos.to_f).round(3)}%"
