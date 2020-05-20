puts "Insira um número positivo de velas"
number = gets.to_i

if(number < 0)
    puts "Entrada inválida"
    exit()
end

hours = 0
while(number != 0)
    hours += number
    number /= 2
end

puts "#{hours} horas"