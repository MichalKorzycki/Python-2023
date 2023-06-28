import requests
from pprint import pprint
import sys

if __name__ == '__main__':
    country = sys.argv[1]
    url = f"https://restcountries.com/v3.1/name/{country}?fullText=true"
    response = requests.request(method="GET", url=url)

    content = response.json()
    content = content[0]
    capital = content['capital'][0]
    official1 = content['name']
    official = official1['official']
    print(official1)
    population = content['population']
    area = content['area']
    print(f'Nazwa  : \t {official}')
    print(f'Stolica: \t {capital}')
    print(f'Ludnosc: \t {population}')
    print(f'Pow.   : \t {area}')
