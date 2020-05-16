menu = {
    :entrada => ["Pãozin","Saladinha","Batatinhas"],
    :principal => ["Pexin","Franguin", "Sopinha"],
    :sobremesa => ["Pudim de CAFÉ","Sorvete de Café", "Gelatina de Café"]
}

pratos = Array.new
pratos.push(menu[:entrada][rand(menu[:entrada].size)])
pratos.push(menu[:principal][rand(menu[:principal].size)])
pratos.push(menu[:sobremesa][rand(menu[:sobremesa].size)])


print "#{pratos}\n"