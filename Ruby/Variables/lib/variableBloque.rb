NUMERO_DE_ITERACIONES = 5

def imprimir_iteraciones(total)
  total.times do |indice|
    puts "Iteración #{indice + 1}"
  end
end

imprimir_iteraciones(NUMERO_DE_ITERACIONES)