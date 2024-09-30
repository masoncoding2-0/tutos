mi_simbolo = :nombre

# Uso de un símbolo como clave en un hash
persona = {mi_simbolo => "Juan", :edad => 32}

# Imprimir el valor asociado al símbolo
puts persona[:nombre]
puts persona[:edad]