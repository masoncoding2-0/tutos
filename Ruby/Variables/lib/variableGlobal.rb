$variable_global = "Soy una variable global"

class MiClase
    def self.obtener_variable_global
        $variable_global
    end
end

puts MiClase.obtener_variable_global
