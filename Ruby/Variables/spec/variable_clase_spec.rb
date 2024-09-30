require_relative '../lib/variableClase'

RSpec.describe MiClase do
  describe '.obtener_variable_de_clase' do
    it 'devuelve el valor inicial de la variable de clase' do
      expect(MiClase.obtener_variable_de_clase).to eq("Soy una variable de clase")
    end
  end
end
