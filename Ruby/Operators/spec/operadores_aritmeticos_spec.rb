require_relative '../lib/operadores_aritmeticos'

RSpec.describe 'Operadores Aritméticos' do
  let(:a) { 10 }
  let(:b) { 5 }

  describe 'suma' do
    it 'suma correctamente dos números' do
      a = 10
      b = 5
      expect(a + b).to eq(15)
      expect { puts(a + b) }.to output("15\n").to_stdout
    end
  end

  describe 'resta' do
    it 'resta correctamente dos números' do
      expect(a - b).to eq(5)
      expect { puts(a - b) }.to output("5\n").to_stdout
    end
  end

  describe 'multiplicación' do
    it 'multiplica correctamente dos números' do
      expect(a * b).to eq(50)
      expect { puts(a * b) }.to output("50\n").to_stdout
    end
  end

  describe 'división' do
    it 'divide correctamente dos números' do
      expect(a / b).to eq(2)
      expect { puts(a / b) }.to output("2\n").to_stdout
    end
  end

  describe 'módulo' do
    it 'calcula correctamente el módulo de dos números' do
      expect(a % b).to eq(0)
      expect { puts(a % b) }.to output("0\n").to_stdout
    end
  end
end