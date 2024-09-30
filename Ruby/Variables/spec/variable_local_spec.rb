require_relative '../lib/variableLocal'

RSpec.describe 'imprimir_variable_local' do
  it 'imprime "Soy una variable local"' do
    expect { imprimir_variable_local }.to output("Soy una variable local\n").to_stdout
  end
end
