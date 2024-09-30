require_relative '../lib/hash'

RSpec.describe 'Hash' do
  let(:output) { capture_stdout { load 'lib/hash.rb' } }
  let(:my_hash) { { name: "Juan", age: 32, city: "Buenaventura" } }

  it 'crea un hash con los elementos correctos' do
    expect(my_hash).to eq({ name: "Juan", age: 32, city: "Buenaventura" })
  end

  it 'imprime el hash correctamente' do
    expect(output).to include('{:name=>"Juan", :age=>32, :city=>"Buenaventura"}')
  end

  it 'imprime la clase del hash correctamente' do
    expect(output).to include("Hash\n")
  end

  it 'verifica que my_hash es de la clase Hash' do
    expect(my_hash).to be_a(Hash)
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
