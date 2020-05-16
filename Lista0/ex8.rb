def isEven(num)
    if num%2 == 0
        puts "#{num} é par"
        return true
    else 
        puts "#{num} é impar"
        return false
    end
end

input = gets.to_i

isEven(input)