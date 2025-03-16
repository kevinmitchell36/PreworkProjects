# Let's figure out how to make a comparison to determine if a hit is a success
# Hero stats 
hero_hp = 10
hero_armor_rating = 15
hero_attack = 12
hero_damage = 5

# Goblin stats
goblin_hp = 6
goblin_armor_rating = 10
goblin_attack = 10
gobling_damage = 1

# Hero's turn
# If the hit is a success...
if hero_attack >= goblin_armor_rating
  puts "Hit!!!"
  goblin_hp = goblin_hp - hero_damage
else 
  puts "Miss..."
end

# Print results
puts goblin_hp

# Goblin's turn 
# If the hit is a success...
if goblin_attack >= hero_armor_rating
  puts "Hit!!"
  hero_hp = hero_hp - gobling_damage
else
  puts "Miss..."
end

# Print results
puts hero_hp


