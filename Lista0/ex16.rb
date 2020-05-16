nucleotideos = ['A','T','C','G']
par = {
    "A" => "T",
    "T" => "A",
    "G" => "C",
    "C" => "G"
}

#Gerando primeira fita aleatoriamente
primeira_fita = Array.new
for i in 0..9
    primeira_fita.push(nucleotideos[rand(4)])
end

print "Primeira Fita: #{primeira_fita}\n"

#Usando um hash para encontrar um par para cada elemento da fita
for i in 0..9
    puts "[#{primeira_fita[i]},#{par[primeira_fita[i]]}]"
end


