begin
    # Código que puede generar una excepción
    raise StandardError, "Este es un error de ejemplo"
rescue StandardError => e
    puts "Se ha producido una excepción: #{e.message}"
    puts "Clase de la excepción: #{e.class}"
    puts "Backtrace: #{e.backtrace.join("\n")}"
else
    puts "Este bloque se ejecuta si no se produce ninguna excepción"
ensure
    puts "Este bloque siempre se ejecuta, haya o no excepción"
end
