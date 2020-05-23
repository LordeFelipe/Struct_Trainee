def fatorial(num)
    if num > 0
        return fatorial(num-1)*num
    else
        return 1
    end
end


puts "Insira um número positivo maior que zero"
number = gets.to_i

if number <= 0
    puts "Entrada inválida"
    exit
end
if number < 10
    print "#{number}! = "
    for i in 1..number-1
        print "#{i}*"
    end
    print "#{number} = #{fatorial(number)}\n"
else
    puts "#{fatorial(number)}"
end
