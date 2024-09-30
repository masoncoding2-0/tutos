require_relative '../lib/float'

RSpec.describe 'Operaciones con flotantes' do
  before do
    @my_float = 10.5
  end

  it 'verifica que my_float es un número de punto flotante' do
    expect(@my_float).to be_a(Float)
  end

  it 'verifica que my_float tiene el valor correcto' do
    expect(@my_float).to eq(10.5)
  end

  it 'verifica que la salida es correcta', :stdout do
    expect { load 'lib/float.rb' }.to output("10.5\nFloat\n").to_stdout
  end
end
