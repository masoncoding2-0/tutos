require_relative '../lib/method'

RSpec.describe 'my_method' do
  let(:my_method_object) { method(:my_method) }

  it 'devuelve el saludo correcto' do
    expect(my_method).to eq("Hola, Ruby!")
  end

  it 'crea un objeto Method' do
    expect(my_method_object).to be_a(Method)
  end

  it 'el objeto Method devuelve el saludo correcto cuando se llama' do
    expect(my_method_object.call).to eq("Hola, Ruby!")
  end
end
