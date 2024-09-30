require_relative '../lib/string_operations'

RSpec.describe "Operaciones con strings" do
  it "verifica que my_string es una cadena" do
    expect(get_my_string).to be_a(String)
  end

  it "verifica que my_string tiene el valor correcto" do
    expect(get_my_string).to eq("Hello, World!")
  end

  it "verifica que la salida es correcta", :stdout do
    expect { load 'lib/string_operations.rb' }.to output("Hello, World!\nString\n").to_stdout
  end
end

