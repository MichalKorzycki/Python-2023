# 11. Listy i zbiory - zaawansowane mechanizmy

- Generatory i Iteratory

- Wyrażenie generatorowe

`x for x in range(10)`

`x*x for x in range(10) if x % 2 == 0`

    List + Generator Expression 
                = 
        ListComprehension

- List comprehension

`[ x for x in range(10)]`

- Set comprehension

`{ x for x in range(10)}`

- Dictionary comprehension

`{ x:x*x for x in range(10)}`

---
# Zadania

- Stworzyć *list comprehension* na podstawie jednej listy z liczbami całkowitymi, ale z elementami o 6 większymi
- Stworzyć *list comprehension* tupli składających się z w/w liczb całkowitych i ich reprezentacji jako napis 
  - np. `[(1, "1"), (2, "2")]`
- biorąc słownik `{"Sedan": 1500, "SUV": 2000, "Pickup": 2500, "Minivan": 1600, "Van": 2400, "Semi": 13600, "Bicycle": 7, "Motorcycle": 110}` stworzyć list comprehension nazw pojazdów cięższych niż 5000
  - Nazwy podać dużymi literami (*uppercase*)
`