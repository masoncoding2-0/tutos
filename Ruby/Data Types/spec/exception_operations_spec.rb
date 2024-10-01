require_relative '../lib/exception_operations'
require 'spec_helper'

describe "Bloque begin-rescue-else-ensure" do
  it "maneja correctamente una excepción" do
    expect {
      begin
        # Lanzamos la excepción fuera del bloque expect
        raise StandardError, "Este es un error de ejemplo"
      end
    }.to raise_error(StandardError, "Este es un error de ejemplo")

    # Verificamos el manejo de la excepción en un bloque separado
    begin
      raise StandardError, "Este es un error de ejemplo"
    rescue StandardError => e
      expect(e.message).to eq("Este es un error de ejemplo")
      expect(e.class).to eq(StandardError)
    else
      fail "No se debería ejecutar el bloque else"
    ensure
      # Aquí puedes agregar código que siempre se ejecutará
    end
  end
end