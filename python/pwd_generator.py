from random import choice

def generate():
    s = ""
    r = range(10)
    i = 6;
    while i > 0 :
        n = choice(r)
        s += str(n)
        i -= 1
    return s
print(generate())

