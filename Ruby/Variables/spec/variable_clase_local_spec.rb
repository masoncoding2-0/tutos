require_relative '../lib/variableClaseLocal'

RSpec.describe MiClase do
  describe '.metodo_de_clase' do
    it 'crea una variable de clase local' do
      MiClase.metodo_de_clase
      expect(MiClase.class_variable_get(:@@variable_de_clase_local)).to eq("Soy una variable de clase local")
    end
  end
end
