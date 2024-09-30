require_relative '../lib/variableSymbol'

RSpec.describe 'Símbolos y Hash' do
  let(:mi_simbolo) { :nombre }
  let(:persona) { {mi_simbolo => "Juan", :edad => 30} }

  describe 'mi_simbolo' do
    it 'es un símbolo' do
      expect(mi_simbolo).to be_a(Symbol)
    end

    it 'tiene el valor correcto' do
      expect(mi_simbolo).to eq(:nombre)
    end
  end

  describe 'persona hash' do
    it 'contiene la clave :nombre' do
      expect(persona).to have_key(:nombre)
    end

    it 'contiene la clave :edad' do
      expect(persona).to have_key(:edad)
    end

    it 'tiene el valor correcto para :nombre' do
      expect(persona[:nombre]).to eq("Juan")
    end

    it 'tiene el valor correcto para :edad' do
      expect(persona[:edad]).to eq(32)
    end

    it 'permite acceder al valor usando mi_simbolo' do
      expect(persona[mi_simbolo]).to eq("Juan")
    end
  end

  describe 'salida del programa' do
    it 'imprime los valores correctos' do
      expect { load 'lib/variableSymbol.rb' }.to output("Juan\n32\n").to_stdout
    end
  end
end
