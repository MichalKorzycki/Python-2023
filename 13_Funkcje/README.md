# 13. Funkcje

- Deklarowanie funkcji
    - `def`
- argumenty funkcji
- Wartości domyslne parametrów
- Zwracanie wyników z funkcji
  - `return`
- Dokumentowanie funkcji i pola specjalne
- Funkcja jako first class citizen

---
# Zadania

- stworzyc funckcję `alphabet_range` działająca jak `range` ale dla liter (z trzema paramtrami)
  - przykład: `alphabet_range('D')` -> `['A', 'B', 'C', 'D']` - albo jeszcze lepiej generator
  - użyć `ord` i `chr`
- stworzyc słownik `{ 'first': funkcja1, 'second': funkcja2 }`, wczytać przez `input` klucz, wywołać funkcję
- stworzyć funkcję `slownie_do999()` która zwróci słownie liczbę  0-999
  - stworzyć funkcję pomocniczą `_slownie_do999()` zwracającą listę tupli `(wartość, słownie)` dla 1 i "nastek" , 10, 100
  - stworzyć funkcję pomocniczą `_sklej()` sklejającą w/w listę
- stworzyć funkcję `dodaj_jednostke` przyjmującą 3 formy np. `['jabłko', 'jabłka', 'jabłek']`
- zbudować funkcję `słownie` do miliardów

