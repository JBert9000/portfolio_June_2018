# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

fruits = ['Mango', 'Pineapple', 'Passion fruit', 'Dragonfruit']

fruits.each {|fruit| Fruit.create(name: fruit, description: "I am a delicious #{fruit}.")}

randomFirstNames = ['Mario', 'Luigi', 'Peach', 'Bowser', 'Waluigi', 'Wario', 'Yoshi', 'Toad', 'Pirana Plant', 'Big Bill', 'Donkey Kong', 'Diddy Kong', 'Link', 'Zelda', 'Ganondorf']

randomLastNames = ['Bros.', '- a Link to the Past', 'Country', 'World', 'Island', '- Orcarina of Time', 'Land', 'Party', 'Tennis', 'Golf', 'Red Version']

100.times {
  NintendoCharacter.create({first_name: randomFirstNames.sample, last_name: randomLastNames.sample, age: rand(1..100)})
}
