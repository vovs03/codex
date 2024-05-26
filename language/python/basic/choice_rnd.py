import random

vars = ("no", "yes")

def get_random_vars(vars):
    indx = random.randint(0,1)
    return print(vars[indx])
    
get_random_vars(vars)
