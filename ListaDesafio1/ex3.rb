def fibonacci(num)
    if num > 1
        return fibonacci(num-1) + fibonacci(num-2) 
    else
        return 1
    end
end


puts "Insira um número positivo"
number = gets.to_i

if number < 1
    puts "ENTRADA INVALIDA"
else
    puts "O #{number}-ésimo número de fibonacci é #{fibonacci(number-1)}"
end