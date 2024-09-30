class MiClase   
    def self.metodo_de_clase     
      @@variable_de_clase_local = "Soy una variable de clase local"   
    end 
end

MiClase.metodo_de_clase
puts MiClase.class_variable_get(:@@variable_de_clase_local)