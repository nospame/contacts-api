require 'http'

all_contacts = HTTP.get("http://localhost:3000/all-contacts.json")
p all_contacts.parse(:json)