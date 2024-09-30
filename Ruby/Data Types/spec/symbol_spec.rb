require_relative '../lib/symbol'

describe Symbol do
  it "crea un símbolo y verifica su clase" do
    my_symbol = :ruby  # Definimos my_symbol aquí
    expect(my_symbol).to eq(:ruby)
    expect(my_symbol.class).to eq(Symbol)
  end
end