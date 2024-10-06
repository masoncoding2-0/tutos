require 'stringio'

RSpec.describe "Operadores de membresía" do
  it "verifica correctamente si un elemento está incluido en un arreglo" do
    output = StringIO.new
    $stdout = output

    load File.join(__dir__, '..', 'lib', 'operadores_membresia.rb')

    $stdout = STDOUT
    resultado = output.string

    expect(resultado).to eq("incluido = true\n")
  end

  it "verifica que el método include? funciona correctamente" do
    arreglo = [1, 2, 3, 4, 5]
    expect(arreglo.include?(3)).to be true
    expect(arreglo.include?(6)).to be false
  end
end
