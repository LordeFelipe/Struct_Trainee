puts "Insira um o número decimal do dinheiro aplicado"
dinheiro = gets.to_f

puts "Insira o rendimento mensal"
rendimento = gets.to_f

puts "Insira o valor da conta de luz"
conta = gets.to_f

puts "Insira o número de meses"
meses = gets.to_i

if dinheiro < 0 || rendimento < 0 || conta < 0 || meses < 0
    puts "ENTRADA INVALIDA"
    exit()
end

lucro = dinheiro*rendimento
tempo_meses = 1
while(lucro < conta)
    dinheiro += dinheiro*rendimento
    lucro += dinheiro*rendimento
    conta *= 1.01
    tempo_meses += 1
end
if tempo_meses > meses
    puts "Wallif não conseguiu pagar a conta no prazo de #{meses} meses, ele precisaria de #{tempo_meses} meses."
else
    puts "Wallif pagou a conta em #{tempo_meses} meses"
end
