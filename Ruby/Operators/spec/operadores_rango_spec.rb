require_relative '../lib/operadores_rango'

RSpec.describe 'Operadores de rango' do
  let(:rango_inclusivo) { (1..5).to_a }
  let(:rango_exclusivo) { (1...5).to_a }

  describe 'rango_inclusivo' do
    it 'debe ser un array con los números del 1 al 5 inclusive' do
      expect(rango_inclusivo).to eq([1, 2, 3, 4, 5])
    end

    it 'debe incluir el número 5' do
      expect(rango_inclusivo).to include(5)
    end
  end

  describe 'rango_exclusivo' do
    it 'debe ser un array con los números del 1 al 4' do
      expect(rango_exclusivo).to eq([1, 2, 3, 4])
    end

    it 'no debe incluir el número 5' do
      expect(rango_exclusivo).not_to include(5)
    end
  end
end
