require 'net/http'
require 'json'

RIOT_API_KEY = '***REMOVED***'
uri = URI('https://na.api.pvp.net/api/lol/na/v1.4/summoner/by-name/BenSanex?api_key=' + RIOT_API_KEY)

raw_json = Net::HTTP.get(uri)

parsed_data = JSON.parse(raw_json, symbolize_names: true)

summoner_id = parsed_data