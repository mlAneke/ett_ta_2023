def start_calculator():
    print("Calculator Started")

def calculate_term(term):
    """
    Interpret term as a mathematical expression
    and return the result
    """
    print("Calculating Term:", term)
    return eval(term)



### If you could like to test the application itself directly, please uncommend the following lines
#start_calculator()
#res = calculate_term("3 + 2")

#print(res)
