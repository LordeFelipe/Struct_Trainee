valor = gets.to_i
notas = [100,50,20,10,5,2]

for nota in notas
    puts "#{valor/nota} nota(s) de #{nota}"
    valor = valor%nota
end

puts "Resto: #{valor}"