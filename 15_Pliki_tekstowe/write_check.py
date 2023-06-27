f = None

try:
    f = open('plik.txt','a')
    f.write("Hello\n")
except Exception as e:
    print("Bląd")
    print(type(e))
    print(e)

finally:
    if f is not None:
        f.close()