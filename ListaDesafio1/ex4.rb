puts "Insira os 3 lados do triangulo"

valores = gets.split
while(valores.size != 3)
    puts "Insira 3 valores!"
    number = gets.split
end

#Convertendo valores para inteiro
for i in 0..(valores.size)
    valores[i] = valores[i].to_i
end

if valores[0] <= 0 || valores[1] <= 0 || valores[2] <= 0
    puts "Entrada Inválida"
    exit
end

if ((valores[0] + valores[1]) < valores[2]) || ((valores[1] + valores[2]) < valores[0]) || ((valores[0] + valores[2]) < valores[1])
    puts "Não é um triangulo"
elsif (valores[0] == valores[1] && valores[1] == valores[2])
    puts "Triangulo equilatero"
elsif (valores[0] != valores[1] && valores[1] != valores[2] && valores[2] != valores[1])
    puts "Triangulo escaleno"
else
    puts "Triangulo isósceles"
end


