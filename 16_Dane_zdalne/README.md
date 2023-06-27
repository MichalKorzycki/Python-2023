# 16. Dane zdalne

- JSON - Javascript object notation
- Zdalne API - protokoły - XML-RPC, SOAP, REST
- REST - REpresentational state transfer
  - Przeglądarka a API
  - http methods 
    - `GET` - pobranie (zawsze idempotentne - nie zmienia stanu)
    - `POST` - tworzy zasób
    - `PUT` - zmienia zasób
    - `DELETE` - usuwa zasób
- Bibliotek `requests`
  - Instalacja
  - Użycie


---
# Zadanie

- Pobrać dane z https://restcountries.com/v3.1/name/Poland?fullText=true; Wyświetlić podstawowe informacje (np. il. mieszkańców, waluta itp.)
- Stworzyć skrypt który z linii poleceń przyjmie nazwę kraju i dal niego wyświetli w/w dane

