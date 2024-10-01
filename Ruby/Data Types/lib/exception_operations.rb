def manejar_excepcion
    begin
        raise StandardError, "Este es un error de ejemplo"
    rescue StandardError => e
        # Aquí solo registramos la excepción, pero la volvemos a lanzar
        puts "Se ha producido una excepción: #{e.message}"
        puts "Clase de la excepción: #{e.class}"
        puts "Backtrace: #{e.backtrace.join("\n")}"
        raise e  # Volvemos a lanzar la excepción
    ensure
        puts "Este bloque siempre se ejecuta, haya o no excepción"
    end
end
