pessoa = Hash.new

puts "Insira seu nome"
pessoa["nome"] = gets

puts "Insira sua idade"
pessoa["idade"] = gets.to_i

puts "Insira sua matrícula"
pessoa["matricula"] = gets.to_i

puts "Insira seu email"
pessoa["email"] = gets

puts pessoa