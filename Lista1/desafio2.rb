menu = {
    :entrada => {
        "Pãozin" => 2,
        "Saladinha" => 1,
        "Batatinhas" => 6.5
        },
    :principal => {
        "Pexin" => 15,
        "Franguin" => 9.5,
        "Sopinha" => 5
        },
    :sobremesa => {
        "Pudim de CAFÉ" => 20,
        "Sorvete de Café" => 5,
        "Gelatina de Café" => 1}
}


pratos = Array.new
pratos.push(menu[:entrada].keys[rand(menu[:entrada].size)])
pratos.push(menu[:principal].keys[rand(menu[:principal].size)])
pratos.push(menu[:sobremesa].keys[rand(menu[:sobremesa].size)])

preco = menu[:entrada][pratos[0]] + menu[:principal][pratos[1]] + menu[:sobremesa][pratos[2]]

print "#{pratos}\n"
puts "Preço: #{preco}"