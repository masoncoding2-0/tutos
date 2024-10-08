class Coche:
    ruedas = 4

    def __init__(self, color):
        self.color = color

coche1 = Coche("rojo")
coche2 = Coche("azul")

print(coche1.ruedas)
print(coche2.ruedas)
