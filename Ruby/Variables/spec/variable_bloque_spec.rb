require_relative '../lib/variableBloque'

RSpec.describe 'Pruebas para imprimir_iteraciones' do
  it 'imprime el número correcto de iteraciones' do
    expect { imprimir_iteraciones(3) }.to output(
      "Iteración 1\nIteración 2\nIteración 3\n"
    ).to_stdout
  end

  it 'no imprime nada cuando el total es cero' do
    expect { imprimir_iteraciones(0) }.to_not output.to_stdout
  end

  it 'imprime el número correcto de iteraciones definido por NUMERO_DE_ITERACIONES' do
    expect { imprimir_iteraciones(NUMERO_DE_ITERACIONES) }.to output(
      "Iteración 1\nIteración 2\nIteración 3\nIteración 4\nIteración 5\n"
    ).to_stdout
  end

  it 'maneja correctamente números grandes' do
    expect { imprimir_iteraciones(10) }.to output(
      (1..10).map { |i| "Iteración #{i}\n" }.join
    ).to_stdout
  end
end
