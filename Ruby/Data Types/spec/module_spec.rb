require_relative '../lib/module'

RSpec.describe ProductManagement do
  let(:product1) { Product.new("Camiseta", 20.0, "Camiseta de algodón con diseño.") }
  let(:product2) { Product.new("Zapatos", 50.0, "Zapatos de cuero elegantes.") }
  let(:cart) { [] }

  describe '#add_product' do
    it 'agrega un producto al carrito' do
      expect { product1.add_product(product1, cart) }.to change { cart.length }.by(1)
      expect(cart).to include(product1)
    end

    it 'imprime un mensaje cuando se agrega un producto' do
      expect { product1.add_product(product1, cart) }.to output("Agregando Camiseta al carrito\n").to_stdout
    end
  end

  describe '#calculate_total_price' do
    it 'calcula correctamente el precio total del carrito' do
      product1.add_product(product1, cart)
      product2.add_product(product2, cart)
      expect { product1.calculate_total_price(cart) }.to output("El precio total del carrito es $70.0.\n").to_stdout
    end
  end

  describe '#display_product_details' do
    it 'muestra los detalles del producto correctamente' do
      expected_output = "Nombre: Camiseta\nPrecio: 20.0\nDescripción: Camiseta de algodón con diseño.\n"
      expect { product1.display_product_details(product1) }.to output(expected_output).to_stdout
    end
  end
end
