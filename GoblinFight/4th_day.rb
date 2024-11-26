# Hero stats
hero = {"hp" => 6, "armor" => 10}

# Goblin stats
goblin = {"hp" => 6, "armor" => 10}

# DM flavored messages
hero_death_messages = ["The hero is no more...", "Our hero is dead...", "The goblin runs the hero through..."]

goblin_death_messages = ["The goblin dies by your blade!", "The goblin dies!", "You win, the goblin is no more!"]

# Fight
while true
  hero_attack = rand(1..20)
  hero_dmg = rand(1..6)
  goblin_attack = rand(1..20)
  goblin_dmg = rand(1..6)
  if goblin["hp"] <= 0
    puts goblin_death_messages.sample 
    break
  elsif hero_attack >= goblin["armor"]
    goblin["hp"] = goblin["hp"] - hero_dmg
    puts goblin["hp"]
    puts "Hit"
    puts "You did " + hero_dmg.to_s + " damage!"
  else 
    puts "Miss..."
  end
  if hero["hp"] <= 0
    puts hero_death_messages.sample
    break
  elsif goblin_attack >= hero["armor"]
    hero["hp"] = hero["hp"] - goblin_dmg
    puts hero["hp"]
    puts "Hit"
    puts "The goblin did " + goblin_dmg.to_s + " damage!"
  else 
    puts "Miss..."
  end
end




