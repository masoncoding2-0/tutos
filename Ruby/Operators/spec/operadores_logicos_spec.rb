require_relative '../lib/operadores_logicos'

RSpec.describe "Operadores lógicos" do
  describe "#and_logico" do
    it "devuelve true cuando ambos operandos son true" do
      expect(and_logico(true, true)).to eq(true)
    end

    it "devuelve false cuando al menos un operando es false" do
      expect(and_logico(true, false)).to eq(false)
      expect(and_logico(false, true)).to eq(false)
      expect(and_logico(false, false)).to eq(false)
    end
  end

  describe "#or_logico" do
    it "devuelve true cuando al menos un operando es true" do
      expect(or_logico(true, true)).to eq(true)
      expect(or_logico(true, false)).to eq(true)
      expect(or_logico(false, true)).to eq(true)
    end

    it "devuelve false cuando ambos operandos son false" do
      expect(or_logico(false, false)).to eq(false)
    end
  end

  describe "#not_logico" do
    it "devuelve true cuando el operando es false" do
      expect(not_logico(false)).to eq(true)
    end

    it "devuelve false cuando el operando es true" do
      expect(not_logico(true)).to eq(false)
    end
  end
end
