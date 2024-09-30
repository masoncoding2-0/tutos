require_relative '../lib/variableInstancia'

RSpec.describe MiClase do
  let(:instancia) { MiClase.new }

  describe '#initialize' do
    it 'crea una variable de instancia' do
      expect(instancia.instance_variables).to include(:@variable_de_instancia)
    end

    it 'asigna el valor correcto a la variable de instancia' do
      expect(instancia.instance_variable_get(:@variable_de_instancia)).to eq("Soy una variable de instancia")
    end
  end

  describe 'acceso a la variable de instancia' do
    it 'permite acceder a la variable de instancia usando instance_variable_get' do
      expect(instancia.instance_variable_get(:@variable_de_instancia)).to eq("Soy una variable de instancia")
    end

    it 'no permite acceder directamente a la variable de instancia' do
      expect { instancia.variable_de_instancia }.to raise_error(NoMethodError)
    end
  end

  describe 'múltiples instancias' do
    it 'cada instancia tiene su propia copia de la variable de instancia' do
      instancia1 = MiClase.new
      instancia2 = MiClase.new

      instancia1.instance_variable_set(:@variable_de_instancia, "Valor modificado")

      expect(instancia1.instance_variable_get(:@variable_de_instancia)).to eq("Valor modificado")
      expect(instancia2.instance_variable_get(:@variable_de_instancia)).to eq("Soy una variable de instancia")
    end
  end
end
