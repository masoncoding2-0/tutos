cadena1 = "Hola, "
cadena2 = "mundo"

concatenacion = cadena1 + cadena2   # "Hola, mundo"
puts "salida = #{concatenacion}"

def concatenar_strings(str1, str2)
  str1 << str2
end

def concatenar_con_operador(str1, str2)
  str1 + str2
end
