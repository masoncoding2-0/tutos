def externo():
    x = 10

    def interno():
        nonlocal x
        x += 5
        print(x)
    
    interno()
    print(x)

externo()
