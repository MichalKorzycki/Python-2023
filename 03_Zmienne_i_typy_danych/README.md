# 3. Zmienne i typy danych

- ### Typy danych
  - #### Proste - logiczny i liczbowe
    - `boolean`
      - `True`, `False`
    -  `integer`
       - `1`, `-13`, `1410`, `2_013`, `1000000`, `1_000_000_000`
    -  `float`
       -  `3.14`,  `1.2e+16`, `.5`
    - Operatory (częściowo) https://www.w3schools.com/python/python_operators.asp
      - `+`, `-`, `/`, '*' - arytmetyczne
      - `**` - potęga
      - `//` - dzielenie całkowite
      - `%` - modulo (reszta z dzielenia)
    - Kolejność operatorów
      - `()`
      - `**`
      - `%`, `/`, `//`, `*`
      - `+`, `-`
 ---
### Przykłady
`.5e5`

`2 + 2`

`2 + 2 * 2`

`(2 + 2) * 2`

`50 - 5*6`

### Zadanie

- podzielić `7` przez `2`
- podzielić całkowicie `7` przez `2`
- pobrać resztę z dzielenia `7` przez `2`

---


  - #### Typ tekstowy
    - `'Ala ma kota'`
    - `"Ala ma kota"` 
    - `"Jack O'Neill"`
    - `'Tak, to "bardzo ciekawe"'`

- ### Zmienne
    - Legalne elementy (Unicode): `A-Z`, `a-z`, `0-9`, `_`
      - Duże i mały litery są znaczące
      - `_` ma specjalne przeznaczenie na początku nazwy (umowne)
    - Konwencje
      - słowa oddzielamy `_` - `important_variable`
      - Duże litery są dla typów (będzie dalej), małe litery dla wartości
      - *"Czy będę pamiętał co ta zmienna znaczy jutro ?"* - lepsze `user_counter` niż `n13`
      - podstawiamy wartość zmiennej operatorem `=`

---

### Przykłady

`a = 2+2`

`A = 5`

