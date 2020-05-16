puts "Insira a sua nota"

nota = gets.to_i

if nota >= 9
    puts "SS"
elsif nota >= 7
    puts "MS"

elsif nota >= 5
    puts "MM"

elsif nota >= 3
    puts "MI"

elsif nota >= 1
    puts "II"
else
    puts "SR"
end