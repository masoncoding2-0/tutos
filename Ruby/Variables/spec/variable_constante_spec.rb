require_relative '../lib/variableConstante'

RSpec.describe 'MI_CONSTANTE' do
  it 'está definida' do
    expect(defined?(MI_CONSTANTE)).not_to be_nil
  end
end
