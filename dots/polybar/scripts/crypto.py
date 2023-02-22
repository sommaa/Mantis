#!/usr/bin/env python3

import sys
import requests
from decimal import Decimal

# Everything except the general section
currency = 'bitcoin'
base_currency = 'USD'
params = {'convert': base_currency}



try:
    json = requests.get(f'https://api.coingecko.com/api/v3/coins/{currency}').json()["market_data"]
    local_price = round(Decimal(json["current_price"][f'{base_currency.lower()}']), 2)

    sys.stdout.write(f'{local_price}'+' '+base_currency+'  ')
except requests.exceptions.ConnectionError as e:
    sys.stdout.write('not connected')
