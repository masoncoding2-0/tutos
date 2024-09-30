require 'rspec'
require_relative '../lib/int'

RSpec.describe 'Operaciones con enteros' do
  let(:output) { StringIO.new }
  
  before do
    $stdout = output
  end

  after do
    $stdout = STDOUT
  end

  it 'crea un entero y muestra su valor y clase' do
    load 'lib/int.rb'
    
    expect(output.string).to eq("10\nInteger\n")
  end

  it 'verifica que my_int es un entero' do
    my_int = 10  # Definimos my_int aquí
    expect(my_int).to be_an(Integer)
    expect(my_int).to eq(10)
  end
end
