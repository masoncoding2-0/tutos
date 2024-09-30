class MiClase   
    @@variable_de_clase = "Soy una variable de clase" 

    def self.obtener_variable_de_clase
        @@variable_de_clase
    end
end

puts MiClase.class_variable_get(:@@variable_de_clase)
