# 13. Funkcje

- Deklarowanie funkcji
    - `def`
- Argumenty funkcji
  - Wartości domyslne argumentów
  - Argumenty formalne
  - Argumenty pozycyjne
  - Argumenty nazwane
- Zwracanie wyników z funkcji
  - `return`
- Dokumentowanie funkcji i pola specjalne
- Funkcja jako first class citizen

---
# Zadania

- stworzyc słownik `{ 'first': funkcja1, 'second': funkcja2 }`, wczytać przez `input` klucz, wywołać funkcję
- stworzyc funckcję `alphabet_range` działająca jak `range` ale dla liter (z trzema parametrami - `start`, `end`, `step`)
  - przykład: `alphabet_range('D')` -> `['A', 'B', 'C', 'D']` - albo jeszcze lepiej generator
  - użyć 
    - `ord` - podaje kod calkowity danego znaku 
    - `chr` - podaje znak odpowiadający danemu kodowi całkowitemu
- stworzyć funkcję `moja_suma` o dowolnej ilości argumentów całkowitych a zwracająca ich sumę
  - np. `moja_suma(1, 2, 3, 4)` zwróci `10`
- stworzyć funkcję `slownie_do999()` która zwróci słownie liczbę  0-999
  - stworzyć funkcję pomocniczą `_slownie_do999()` zwracającą listę tupli `(wartość, słownie)` dla 1 i "nastek" , 10, 100
  - stworzyć funkcję pomocniczą `_sklej()` sklejającą w/w listę
- stworzyć funkcję `dodaj_jednostke` przyjmującą w/w listę i 3 formy np. `['jabłko', 'jabłka', 'jabłek']`
- zbudować funkcję `słownie` podającą słownie liczby całkowite do miliardów (do `999_999_999_999`)

