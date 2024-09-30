require_relative '../lib/variableGlobal'

RSpec.describe 'Variable Global y MiClase' do
  describe '$variable_global' do
    it 'está definida' do
      expect(defined?($variable_global)).not_to be_nil
    end

    it 'tiene el valor correcto' do
      expect($variable_global).to eq("Soy una variable global")
    end

    it 'puede ser modificada' do
      valor_original = $variable_global
      $variable_global = "Nuevo valor"
      expect($variable_global).to eq("Nuevo valor")
      $variable_global = valor_original  # Restauramos el valor original
    end
  end

  describe 'MiClase' do
    describe '.obtener_variable_global' do
      it 'devuelve el valor de la variable global' do
        expect(MiClase.obtener_variable_global).to eq($variable_global)
      end

      it 'refleja los cambios en la variable global' do
        valor_original = $variable_global
        $variable_global = "Valor cambiado"
        expect(MiClase.obtener_variable_global).to eq("Valor cambiado")
        $variable_global = valor_original  # Restauramos el valor original
      end
    end
  end
end
