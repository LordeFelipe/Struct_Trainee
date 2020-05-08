bissextos = Array.new
anos_seculo20 = Array.new

for ano in 1..2020 
    if(ano > 1900 && ano <= 2000)
        anos_seculo20.push(ano)
        if(ano%4 == 0)
            bissextos.push(ano)
        end
    end
end

for i in 0..bissextos.size
    print "#{bissextos[i]} "
end