require_relative '../lib/regexp'

RSpec.describe "Regexp Tests" do
  let(:output) { capture_stdout { load 'lib/regexp.rb' } }

  it "verifica que my_regexp es /hello/" do
    expect($my_regexp).to eq(/hello/)
  end

  it "imprime la expresión regular correctamente" do
    expect(output).to include("/hello/\n")
  end

  it "imprime la clase de my_regexp correctamente" do
    expect(output).to include("Regexp\n")
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
