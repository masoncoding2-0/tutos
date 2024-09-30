class MiClase   
    def initialize     
      @variable_de_instancia = "Soy una variable de instancia"   
    end 
end

instancia = MiClase.new
puts instancia.instance_variable_get(:@variable_de_instancia)