require_relative '../lib/operadores_concatenacion'

RSpec.describe "Operadores de concatenación" do
  describe "#concatenar_strings" do
    it "concatena dos strings correctamente" do
      expect(concatenar_strings("Hola", "Mundo")).to eq("HolaMundo")
    end
  end

  describe "#concatenar_con_operador" do
    it "concatena strings usando el operador +" do
      expect(concatenar_con_operador("Hola", "Mundo")).to eq("HolaMundo")
    end
  end
end
