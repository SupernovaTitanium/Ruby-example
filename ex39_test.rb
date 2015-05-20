require './dict.rb'
#create a mapping of state to abbreviation
states=Dict.new()
Dict.set(states,'Oregon','OR')
Dict.set(states, 'Florida', 'FL')
Dict.set(states, 'California', 'CA')
Dict.set(states, 'New York', 'NY')
Dict.set(states, 'Michigan', 'MI')

# create a basic set of states and some cities in them
cities = Dict.new()
Dict.set(cities, 'CA', 'San Francisco')
Dict.set(cities, 'MI', 'Detroit')
Dict.set(cities, 'FL', 'Jacksonville')

Dict.set(cities,'NY','New York')
Dict.set(cities,'OR','Portland')

puts '_'*10
puts "NY State has: #{Dict.get(cities, 'NY')}"
puts "OR State has: #{Dict.get(cities, 'OR')}"

puts '_'*10
puts "Michigan's abbreviation is: #{Dict.get(states, 'Michigan')}"
puts "Florida's abbreviation is: #{Dict.get(states, 'Florida')}"

puts '_'*10
puts "Michigan has: #{Dict.get(cities,Dict.get(states,'Michigan'))}"
puts "Florida has: #{Dict.get(cities, Dict.get(states, 'Florida'))}"

puts '_' *10
Dict.list(states)
puts '-' * 10
Dict.list(cities)
puts '_' *10
state=Dict.get(states, 'Texas')

if !state
	puts "Sorry, no Texas."
end

city=Dict.get(cities,'TX','Does Not Exist')
puts "The city for the state 'TX' is: #{city}"
