def start_calculator():
    print("Calculator Started")

def calculate_term(term):
    """
    Interpret term as a mathematical expression
    and return the result
    """
    print("Calculating Term:", term)
    return eval(term)


#0b
#0d
#0x 

### If you could like to test the application itself directly, please uncommend the following lines
#start_calculator()
#res = calculate_term("3 + 2")

#print(res)


### If you keep the previous lines uncommented, changes will be noticed when you are aiming to run the app/calculator directly. Robotframework [RF] calls the functions directly without excecuting the whole file