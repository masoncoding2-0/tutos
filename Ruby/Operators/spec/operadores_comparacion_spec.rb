require_relative '../lib/operadores_comparacion'

RSpec.describe 'Operadores de comparación' do
  it 'imprime los resultados correctos de las comparaciones' do
    expect { load File.join(__dir__, '..', 'lib', 'operadores_comparacion.rb') }.to output(
      "igualdad = false\n" +
      "desigualdad = true\n" +
      "mayor_que = true\n" +
      "menor_que = false\n" +
      "mayor_o_igual = true\n" +
      "menor_o_igual = false\n"
    ).to_stdout
  end
end
