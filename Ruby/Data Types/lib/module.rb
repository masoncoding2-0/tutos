#Definimos un módulo llamado ProductManagement
module ProductManagement
    #Un método para agregar un producto al carrito
    def add_product(product, cart)
        cart << product
        puts "Agregando #{product.name} al carrito"
    end

    #Un método para calcular el total de los productos en el carrito
    def calculate_total_price(cart)
        total_price = cart.reduce(0) { |sum, product| sum + product.price }
        puts "El precio total del carrito es $#{total_price}."
    end

    #Un método para mostrar los detalles del producto
    def display_product_details(product)
        puts "Nombre: #{product.name}"
        puts "Precio: #{product.price}"
        puts "Descripción: #{product.description}"
    end
end

#Definimos una clase llamada Product
class Product
    #Incluimos el módulo ProductManagement en la clase Product
    include ProductManagement
    
    attr_accessor :name, :price, :description
    #Definimos un método para mostrar los detalles del producto
    def initialize(name, price, description)
        @name = name
        @price = price
        @description = description
    end
end

# Creamos algunos productos
product1 = Product.new("Camiseta", 20.0, "Camiseta de algodón con diseño.")
product2 = Product.new("Zapatos", 50.0, "Zapatos de cuero elegantes.")
product3 = Product.new("Pantalones", 30.0, "Pantalones vaqueros cómodos.")

# Creamos un carrito vacío
cart = []

# Agregamos productos al carrito utilizando los métodos del módulo
product1.add_product(product1, cart)
product2.add_product(product2, cart)
product3.add_product(product3, cart)

# Calculamos el precio total del carrito
product1.calculate_total_price(cart)

# Mostramos los detalles de un producto
product1.display_product_details(product1)