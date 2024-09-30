require_relative '../lib/variableInteraccion'

RSpec.describe 'Iteración' do
  it 'imprime el mensaje correcto 5 veces' do
    # Redirigimos la salida estándar a un StringIO para capturarla
    output = StringIO.new
    $stdout = output

    # Ejecutamos el código
    load 'lib/variableInteraccion.rb'

    # Restauramos la salida estándar
    $stdout = STDOUT

    # Obtenemos las líneas de salida
    lines = output.string.split("\n")

    # Verificamos que hay 5 líneas
    expect(lines.size).to eq(5)

    # Verificamos el contenido de cada línea
    5.times do |i|
      expect(lines[i]).to eq("Iteración #{i}")
    end
  end
end
