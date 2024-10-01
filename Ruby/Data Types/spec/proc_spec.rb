require_relative '../lib/proc'

RSpec.describe 'Proc functionality' do
  it 'crea un Proc que multiplica por 2' do
    expect($my_proc).to be_a(Proc)
  end

  it 'multiplica correctamente por 2 cuando se llama con 2' do
    expect($my_proc.call(2)).to eq(4)
  end

  it 'multiplica correctamente por 2 cuando se llama con 3' do
    expect($my_proc.call(3)).to eq(6)
  end

  it 'multiplica correctamente por 2 cuando se llama con 4' do
    expect($my_proc.call(4)).to eq(8)
  end

  it 'imprime los resultados correctamente' do
    expected_output = "4\n6\n8\n"
    expect { 
      puts $my_proc.call(2)
      puts $my_proc.call(3)
      puts $my_proc.call(4)
    }.to output(expected_output).to_stdout
  end
end
