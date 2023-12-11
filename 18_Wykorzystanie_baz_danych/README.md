# 17. Wykorzystanie baz danych

- ## Postgres 
  - Założenie użytkownika
    - Uruchomic `pg_admin`
    - `my_user` - dać wszystkie uprawnienia, zmienić hasło na `secret`
  - Założenie bazy danych
    - założyc bazę danych `my_database` której właścicielem jest `my_user`
- ## Język SQL
  - ### Data Definition Language
    - Tworzymy tabele food item
    - Zrzucamy tabele food item `DROP <table>;`
  - ### Data Manipulation Language
    - `INSERT`
    - `SELECT`
    - `UPDATE`
    - `DELETE`

- ### Python a bazy danych
  - `psycopg2` - postgres
  - `sqllite3`

- ### Relacje w relacyjnych bazach danych


- ### SQL Alchemy

---

# Zadania
- Załadować do bazy danych postgres pythonem zawartość pliku `foods.csv`
- Załadować do bazy danych sqllite pythonem zawartość pliku `foods.csv` korzystając z SQLa
- Załadować do bazy danych sqllite pythonem zawartość pliku `foods.csv` korzystając z SQL Alchemy