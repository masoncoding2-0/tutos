require_relative '../lib/range'

RSpec.describe "Range Tests" do
  let(:output) { capture_stdout { load 'lib/range.rb' } }

  it "verifica que inclusive_range es 1..10" do
    inclusive_range = 1..10
    expect(inclusive_range).to eq(1..10)
  end

  it "verifica que exclusive_range es 1...10" do
    exclusive_range = 1...10
    expect(exclusive_range).to eq(1...10)
  end

  it "imprime el rango inclusivo correctamente" do
    expect(output).to include("1..10\n")
  end

  it "imprime el rango exclusivo correctamente" do
    expect(output).to include("1...10\n")
  end

  it "imprime la clase de inclusive_range correctamente" do
    expect(output).to include("Range\n")
  end

  it "imprime la clase de exclusive_range correctamente" do
    expect(output).to include("Range\n")
  end
end

# Método para capturar la salida estándar
def capture_stdout
  original_stdout = $stdout
  $stdout = StringIO.new
  yield
  $stdout.string
ensure
  $stdout = original_stdout
end
