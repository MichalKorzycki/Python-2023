# 20. Flask

- Środowiska wirtualne
  - `pip`
  - Aktywacja

- `Flask`

---
# Zadania

- Stworzyć aplikację która nas wita nas naszym imieniem - dostarczonym przez Flaska
- Stworzyć aplikację która nas wita po podaniu z formularza swojego imienia
- Poprawić `app8` - tak aby klucz był unikalny (dodanie ponownie modyfikuje wartość)
- Stworzyć aplikację która pozwala wyświetlić listę znaczników (tag), pozwolić dodać i usunąć tag
- Stworzyć aplikację która pozwala wyświetlić listę notatek zawierających tytuł, treść, pozwolić dodać i usunąć notatkę
- Stworzyć aplikację która pozwala wyświetlić listę notatek zawierających tytuł, treść i pozwala dodać do nich znacznik z listy



---
# Projekt

### Stworzyć aplikację do wprowadzania i segregowania notatek opartą o bazą danych

#### Baza danych:
- Stworzyć encję (tabelę) `note` zawierającą notatkę - tytuł, treść,
- Stworzyć aplikację `Flask` wyświetlającą listę tytułów notatek i możliwość dodania notatki (HTMLowy znacznik `TEXTAREA`)
- Po kliknięciu na link z tytułem notatki (znacznik HTML `<a href="/edit">...</a>`) przejść do edycji notatki
- Stworzyć encję (tabelę) `tag`  zawierająca oznaczenie tematu notatki (np. `work`, `home`, `todo` itp.)
- Stworzyć szablon `Flask` pozwalający dodać i usunąć `tag`
- Stworzyć relację m:n `note` i `tag` 
`    notes= relationship("Note",
                    secondary='note_tag',
                    uselist=True,
                    backref='tags'
` poprzed dodanie jeszcze jednej tablicy relacyjnej `note_tag`
- Dodać możliwośc dołożenia (i usunięcia) tagu dla danej notatki
- Wyświetlić przy liście tytułów notatek jej tagi
- Po kliknięciu na tag - odfiltrować tylko te wiadomości na liście, które mają kliknięty tag
