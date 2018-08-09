require 'json'
require 'open-uri'

BASE = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'.freeze

puts 'Cleaning up the DB...'
Ingredient.destroy_all

puts 'Generating seeds...'

data = JSON.parse(URI.parse(BASE).read)['drinks']
data.each { |drink| Ingredient.create(name: drink.values.first) }

puts 'Voilá, all done.'
