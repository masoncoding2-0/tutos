require_relative '../lib/nil'

RSpec.describe "nil tests" do
  it "debería imprimir una nueva línea y luego NilClass" do
    expect { load 'lib/nil.rb' }.to output("\nNilClass\n").to_stdout
  end
end
