# Let's determine the hero and goblin stats. What happens when they hit?
# Hero stats 
hero_hp = 10
hero_damage = 5

# Goblin stats
goblin_hp = 6
gobling_damage = 1

# Hero's turn
# If the hit is a success...
goblin_hp = goblin_hp - hero_damage

# Print results
puts goblin_hp

# Goblin's turn 
# If the hit is a success...
hero_hp = hero_hp - gobling_damage

# Print results
puts hero_hp