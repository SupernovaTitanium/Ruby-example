#creat a mapping of state to abbreviation
states={
 	'Oregon'=>'OR',
 	'Florida'=>'FL',
 	'California'=>'CA',
 	'New York'=>'NY',
 	'Michigan'=>'MI'
}
#create a basic of states and some cities in them
cities={
	'CA'=>'San Francisco',
	'MI'=>'Detoroit',
	'FL'=>'Jacksonvile'
}

#add some more cities
cities['NY']='New York'
cities['OR']='Portland'

#puts out some cities
puts '-' *10
puts "NY Stats has: #{cities['NY']}"
puts "OR State has: #{cities['OR']}"

#puts some states
puts '_' *10
puts "Michigan's abbreviation is:#{states['Michigan']}"
puts "Michigan's abbreviation is:#{states['Florida']}"
puts '_' *10
puts "Michigan has: #{cities[states['Michigan']]}"
puts "Florida has: #{cities[states['Florida']]}"

#puts every state abbreviation
puts '-' *10
states.each do |state, abbrev|
	puts "#{state} is abbreviated #{abbrev}"
end

puts '_' *10
cities.each do |abbrev, city|
	puts "#{abbrev} has the city #{city}"
end
puts'-' *10
states.each do |state,abbrev|
	city=cities[abbrev]
	puts "#{state} is abbreviated #{abbrev} and has city #{city}"
end
puts '-'*10
state=states['Texas']
if !state
	puts "Sorry, no Texas."
end

city=cities['TX']
city||='Does Not Exist'
puts "The city for the same 'TX' is: #{city}"
