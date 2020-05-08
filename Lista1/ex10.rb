counter = 0

valores = gets.split

if(valores.size != 10)
    puts "Número incorreto de entradas"
else
    #Convertendo array para inteiro
    valores.each do |valor|
        valor = valor.to_i
        if(valor <= 20 && valor >= 10)
            counter += 1
            puts valor
        end
    end

    puts "#{counter} estão no intervalo [10,20], #{10-counter}, fora"
end