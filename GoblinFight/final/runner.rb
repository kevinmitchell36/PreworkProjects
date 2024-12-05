require 'monster'
require 'hero'

warrior = Hero.new("Balthor", "warrior", "sword", "fireball", 17)
puts "The #{warrior.vocation} #{warrior.name} swings their might #{warrior.weapon1} at the monster and rolls a #{warrior.attack}"
p warrior

