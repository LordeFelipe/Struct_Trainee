def isEven(num)
    if num%2 == 0
        return true
    else 
        return false
    end
end

evencount = 0

for i in 1..5
    input = gets.to_i
    if(isEven(input))
        evencount = evencount + 1
    end
end

puts "#{evencount} número são pares e #{5 - evencount} são ímpares"
