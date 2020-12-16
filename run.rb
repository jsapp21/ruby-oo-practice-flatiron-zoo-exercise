require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
zoo_1 = Zoo.new("Lincoln Park Zoo", "Chicago, IL")
zoo_2 = Zoo.new("San Diego Zoo", "San Diego, CA")
zoo_3 = Zoo.new("Bronx Zoo", "Bronx, NY")
zoo_4 = Zoo.new("Brookfield Zoo", "Chicago, IL")

animal_1 = Animal.new("Giraffe", 180, "Layla", zoo_1)
animal_2 = Animal.new("Panda Bear", 200, "Max", zoo_2)
animal_3 = Animal.new("Lion", 220, "Simba", zoo_2)
animal_4 = Animal.new("Aligator", 100, "Chance the Snapper", zoo_1)
animal_6 = Animal.new("Panther", 200, "Fred", zoo_1)
animal_6 = Animal.new("Tiger", 220, "Katy", zoo_3)
animal_7 = Animal.new("Giraffe", 170, "Eric", zoo_1)


binding.pry
puts "done"
