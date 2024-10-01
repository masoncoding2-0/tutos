require_relative '../lib/object'

RSpec.describe 'Object creation and inspection' do
  it 'crea un nuevo objeto' do
    expect($my_object).to be_an(Object)
  end

  it 'imprime la representación del objeto' do
    expect { puts $my_object }.to output(/^#<Object:0x[0-9a-f]+>$/).to_stdout
  end

  it 'imprime la clase del objeto' do
    expect { puts $my_object.class }.to output("Object\n").to_stdout
  end
end
