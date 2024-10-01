require_relative '../lib/boolean'

RSpec.describe 'Booleanos' do
  let(:output) { capture_stdout { load 'lib/boolean.rb' } }

  it 'verifica que my_boolean es true' do
    expect($my_boolean).to eq(true)
  end

  it 'verifica que my_boolean2 es false' do
    expect($my_boolean2).to eq(false)
  end

  it 'imprime el valor de my_boolean correctamente' do
    expect(output).to include("true\n")
  end

  it 'imprime la clase de my_boolean correctamente' do
    expect(output).to include("TrueClass\n")
  end

  it 'imprime el valor de my_boolean2 correctamente' do
    expect(output).to include("false\n")
  end

  it 'imprime la clase de my_boolean2 correctamente' do
    expect(output).to include("FalseClass\n")
  end
end

# Método para capturar la salida estándar
def capture_stdout
  original_stdout = $stdout
  $stdout = StringIO.new
  yield
  $stdout.string
ensure
  $stdout = original_stdout
end
