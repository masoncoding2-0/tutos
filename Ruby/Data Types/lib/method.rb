def my_method
    "Hola, Ruby!"
end
  
my_method_object = method(:my_method)
puts my_method_object.call
puts my_method_object.class
