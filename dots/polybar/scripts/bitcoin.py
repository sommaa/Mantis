#!/usr/bin/env python3
import sys
import json
from decimal import Decimal
import requests
import os

# Everything except the general section
currency = 'bitcoin'
base_currency = 'USD'
params = {'convert': base_currency}
home_directory = os.path.expanduser( '~' )
try:
    json_store = requests.get(f'https://api.coingecko.com/api/v3/coins/{currency}').json()["market_data"]
    local_price = round(Decimal(json_store["current_price"][f'{base_currency.lower()}']), 2)
    sys.stdout.write(f'{local_price}'+'$'+'  ')
    # caching in .cache 
    with open(home_directory + "/.cache/bitcoin_cache.json", "w") as outfile:
        json.dump(json_store, outfile)

except requests.exceptions.ConnectionError as e:
    # Opening JSON file
    with open(home_directory + '/.cache/bitcoin_cache.json', 'r') as openfile:
        # Reading from json file
        json_store = json.load(openfile)
    local_price = round(Decimal(json_store["current_price"][f'{base_currency.lower()}']), 2)
    sys.stdout.write(f'{local_price}'+'$'+'  ')
