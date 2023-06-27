# 12. Wyjątki i obsługa błędów

- Rodzaje błędów
  - Programistyczne - te eleminujemy poprawiając kod
  - Infrastruktury - nie naprawimy, ale przynajmniej komunikujemy
  - Błedne dane - tu trzeba to obsłużyć - podając np. źródło błędu


- Tworzenie własnych typów błędów


- Słowa kluczowe 
  - `try` 
  - `except`
  - `finally` 


- Logika obsługi błędów
  - 1sza zasada kosmologii (__*S#!t happens*__)
  - Nigdy nie przemilczaj błędów - minimum wypisz je na ekran
  - *"To nie mój problem"* - obsługuj błędy tak "wysoko" w strukturze jak się da
  

- Prawidłowe zarządzanie zasobami przy użyciu `with` - ale to później

---
# Zadanie
- wczytaj przy użyciu `input` liczbę; wypisz sumę jej cyfr; jeśli podano błędne wejście, poproś jeszcze raz