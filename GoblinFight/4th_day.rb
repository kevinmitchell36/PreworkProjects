# Hero stats
hero = {"hp" => 10, "armor_rating" => 15}

# Goblin stats
goblin = {"hp" => 6, "armor_rating" => 10}

# Fight
while true
  hero_attack = rand(1..20)
  hero_damage = rand(1..10)
  goblin_attack = rand(1..20)
  goblin_damage = rand(1..6)
  if goblin["hp"] <= 0
    puts "The goblin dies by your blade"
    break
  elsif hero_attack >= goblin["armor"]
    goblin["hp"] = goblin["hp"] - hero_damage
    puts goblin["hp"]
    puts "Hit"
    puts "You did " + hero_damage.to_s + " damage!"
  else 
    puts "Miss..."
  end
  if hero["hp"] <= 0
    puts "The hero is no more..."
    break
  elsif goblin_attack >= hero["armor"]
    hero["hp"] = hero["hp"] - goblin_dmg
    puts hero["hp"]
    puts "Hit"
    puts "The goblin did " + goblin_damage.to_s + " damage!"
  else 
    puts "Miss..."
  end
end