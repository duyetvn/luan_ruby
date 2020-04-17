require 'json'

file = File.open("input.txt")
data = file.read

data = JSON.parse(data)

puts data['hello']

# Write data to file