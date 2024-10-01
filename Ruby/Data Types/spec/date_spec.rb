require 'date'  # Asegúrate de incluir esta línea para usar la clase Date
require_relative '../lib/date'  # Asegúrate de que la ruta sea correcta

RSpec.describe "Date Tests" do
  let(:output) { capture_stdout { load File.join(File.dirname(__FILE__), '..', 'lib', 'date.rb') } }

  it "verifica que $my_date es la fecha correcta" do
    expect($my_date).to eq(Date.new(2024, 9, 30))
  end

  it "imprime la fecha correctamente" do
    expect(output).to include("2024-09-30\n")
  end

  it "imprime la clase de $my_date correctamente" do
    expect(output).to include("Date\n")
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
