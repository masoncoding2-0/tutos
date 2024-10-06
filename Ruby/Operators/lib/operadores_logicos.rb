def and_logico(a, b)
  a && b
end

def or_logico(a, b)
  a || b
end

def not_logico(a)
  !a
end

condicion1 = true
condicion2 = false

puts "and_logico = #{condicion1 && condicion2}"   # false (ambas deben ser verdaderas)
puts "or_logico = #{condicion1 || condicion2}"    # true (con que una sea verdadera)
puts "not_logico = #{!condicion1}"                # false (inversión de condicion1)
