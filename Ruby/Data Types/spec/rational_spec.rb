require_relative '../lib/rational'

RSpec.describe 'Rational number' do
  it 'crea un número racional correctamente' do
    expect($my_rational).to eq(Rational(1, 4))
  end

  it 'es una instancia de la clase Rational' do
    expect($my_rational).to be_an_instance_of(Rational)
  end

  it 'tiene el numerador correcto' do
    expect($my_rational.numerator).to eq(1)
  end

  it 'tiene el denominador correcto' do
    expect($my_rational.denominator).to eq(4)
  end

  it 'se representa correctamente como cadena' do
    expect($my_rational.to_s).to eq('1/4')
  end

  it 'se convierte correctamente a flotante' do
    expect($my_rational.to_f).to be_within(0.0001).of(0.25)
  end
end
