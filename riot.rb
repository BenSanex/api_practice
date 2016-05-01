require 'net/http'
require 'json'

RIOT_API_KEY = 'a61510fa-2726-4554-b394-4b24fb9ded2f'
uri = URI('https://na.api.pvp.net/api/lol/na/v1.4/summoner/by-name/BenSanex?api_key=' + RIOT_API_KEY)

raw_json = Net::HTTP.get(uri)

parsed_data = JSON.parse(raw_json, symbolize_names: true)

summoner_id = parsed_data