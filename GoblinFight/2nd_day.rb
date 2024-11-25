# Hero stats
hero_hp = 50
hero_dmg = 2

# Goblin stats
goblin_hp = 6
goblin_dmg = 1


# If the hit is a success
if goblin_dmg == 1
  goblin_hp = goblin_hp - hero_dmg
end

# Print results
puts goblin_hp


# Goblin's turn


# If the hit is a success...
if hero_dmg == 2
  hero_hp = hero_hp - goblin_dmg
end

# Print results
puts hero_hp