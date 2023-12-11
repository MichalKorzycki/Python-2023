# 18. Wstęp do obiektowości

---

- ### Definiowanie obiektów
  - Pola i metody
  - Metoda specjalna `__init__`
  - Metody klasowe

--- 
- ### Nie trzeba programować obiektowo by mieć <span style="color: cyan">__przestrzeń nazw__ (*namespace*)</span>
- ### Programujesz obiektowo jeśli w kodzie masz:
  - #### <span style="color: cyan">__*hermetyzację*__</span>
  - #### <span style="color: cyan">__*polimorfizm*__</span> 

### Innymi słowy - w <span style="color: cyan">OOP</span> logika siedzi w <span style="color: cyan">__*"."*__</span>

---

- ### Hermetyzacja
  - Pola prywatne
  - > <span style="color: cyan">*"We are all consensual adults here"*</span>
  - <span style="color: cyan">__*BORG*__</span>
  - Anatomia obiektu - `__dict__`
  - Metody specjalne https://docs.python.org/3/reference/datamodel.html#special-method-names
  
- ### Polimorfizm
  - Dziedziczenie 
  - >  *"Object Oriented Programming is programming in the future tense"* - Bjarne Stroustrup, C++
  - Klasy abstrakcyjne - przykład "Orkiestra"
  - Fabryka obiektów 
- ### *Animal spirits*
  - Duck Typing
  - Monkey Patching
  - *Nie potrzebuję tego #%!& if-a*


---

# Zadania

- Stworzyć klasę `FoodItem` z polami `id`, `price` `item` - specjalnymi metodami `__init__` i `__repr__`, stworzyć listę `FoodItem` na podstawie pliku CSV
- Stworzyć klasę `Card` która ma dwa pola - `suit` (wartości np. `club`, `diamond`, `heart`, `spade`), `value` (wartości np. `9`, `10`, `J`, `Q`, `K`, `A`) przeciążyć metodę od obsługi `<` i `>` które oznacza "bicie karty"
  - Karta bije kartę jeśli ma ten sam kolor i mocniejszą wartość
  - Pik (`spade`) jest atutem - bije inne kolory. Pozostałe kolory nie biją się nawzajem
- Stworzyć dwie klasy z metodą `do_it`. Pobrać przez `input` nazwę klasy do utworzenia (przez fabrykę obiektów). Wywołaj odpowiednie `do_it`
  - A teraz dołożyć jeszcze jedną klasę z `do_it`