require_relative '../lib/complex'

RSpec.describe 'Complex number' do
  it 'crea un número complejo correctamente' do
    expect($my_complex).to eq(Complex(1, 2))
  end

  it 'es una instancia de la clase Complex' do
    expect($my_complex).to be_an_instance_of(Complex)
  end

  it 'tiene la parte real correcta' do
    expect($my_complex.real).to eq(1)
  end

  it 'tiene la parte imaginaria correcta' do
    expect($my_complex.imaginary).to eq(2)
  end
end
