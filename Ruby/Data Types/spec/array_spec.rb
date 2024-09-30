require_relative '../lib/array'

RSpec.describe 'Array' do
  let(:output) { capture_stdout { load 'lib/array.rb' } }

  it 'crea un array con los elementos correctos' do
    expect($my_array).to eq([1, 2, 3, 4, 5])
  end

  it 'imprime el array correctamente' do
    expect(output).to include("[1, 2, 3, 4, 5]\n")
  end

  it 'imprime la clase del array correctamente' do
    expect(output).to include("Array\n")
  end

  it 'verifica que $my_array es de la clase Array' do
    expect($my_array).to be_an(Array)
  end
end

def capture_stdout
  original_stdout = $stdout
  $stdout = StringIO.new
  yield
  $stdout.string
ensure
  $stdout = original_stdout
end
