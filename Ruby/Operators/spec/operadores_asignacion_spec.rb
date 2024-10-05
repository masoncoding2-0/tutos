require_relative '../lib/operadores_asignacion'

RSpec.describe 'Operadores de asignación' do
  it 'muestra los resultados correctos de las operaciones' do
    # Capturamos la salida estándar
    output = capture_stdout { load File.join(__dir__, '..', 'lib', 'operadores_asignacion.rb') }
    
    # Verificamos que la salida contenga las líneas esperadas
    expect(output).to include("x = 5               # Asignación simple, x es 5")
    expect(output).to include("y += 3              # y ahora es 13 (y = y + 3)")
    expect(output).to include("z *= 2              # z ahora es 40 (z = z * 2)")
  end
end

# Método auxiliar para capturar la salida estándar
def capture_stdout
  original_stdout = $stdout
  $stdout = StringIO.new
  yield
  $stdout.string
ensure
  $stdout = original_stdout
end
