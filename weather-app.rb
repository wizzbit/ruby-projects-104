 	
 	
require 'yahoo-weather'

client = Weatherman::Client.new
response = client.lookup_by_woeid 455821

response.location['city'] # => "Belo Horizonte"
response.location['country'] # => "Brazil"
response.condition['date'] # => #<Date: -1/2,0,2299161>

ptbr_client = Weatherman::Client.new :lang # => 'pt-br'
response = ptbr_client.lookup_by_woeid 455821

response.condition['text'] # => "Parcialmente Nublado"
response.condition['country'] # => "Brasil"