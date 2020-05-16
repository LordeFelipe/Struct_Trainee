number = -1
while(number <= 0)
    puts "Insira um número positivo maior que zero"
    number = gets.to_i
end

primos = Array.new
for i in 2..number-1
    if number%i == 0
        primos.push(i)
    end
end

if(primos.size == 0)
    puts "O número #{number} é primo :D"
else
    puts "O número #{number} não é primo pois tem divisores #{primos}"
end