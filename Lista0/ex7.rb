num = 0

while num <= 0 || num > 10
    puts "Insira um número de 1 a 10"
    num = gets.to_i
end

for i in 1..10
    print "#{num*i} "
end