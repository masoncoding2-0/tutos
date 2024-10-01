require_relative '../lib/class'

RSpec.describe 'Class creation' do
  it 'crea una nueva clase' do
    expect($my_class).to be_a(Class)
  end

  it 'la clase creada es una instancia de Class' do
    expect($my_class.class).to eq(Class)
  end

  it 'la clase creada es diferente de otras clases' do
    another_class = Class.new
    expect($my_class).not_to eq(another_class)
  end

  it 'se puede crear una instancia de la clase' do
    instance = $my_class.new
    expect(instance).to be_an_instance_of($my_class)
  end

  it 'la clase no tiene nombre' do
    expect($my_class.name).to be_nil
  end
end
