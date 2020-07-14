require 'json'
require 'httparty'
require 'dotenv'

class Events
	include HTTParty
	base_uri "https://api.airtable.com/v0/appHeUgQiEKWb38gN"

	def events
		self.class.get('/Posts?api_key=keygkji6z5ZjpYuhl')
	end
end

events = Events.new

# Change the filename here below but make sure it's in the _data folder.
File.open("/Users/johnhaynes/documents/Github/printersplayhouse/_data/events.json", "wb") do |f|
    data = events.events
    f.write(data)
end