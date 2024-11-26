# Hero stats
hero_hp = 7
hero_armor = 15

# Goblin stats
goblin_hp = 6
goblin_armor = 10

# If the hero's hit is a success
while true
  hero_attack = rand(1..20)
  hero_dmg = rand(1..10)
  goblin_attack = rand(1..20)
  goblin_dmg = rand(1..6)
  if goblin_hp <= 0
    puts "The goblin dies by your blade"
    break
  elsif hero_attack >= goblin_armor
    goblin_hp = goblin_hp - hero_dmg
    puts "Hit"
    puts "You did " + hero_dmg.to_s + " damage!"
  else 
    puts "Miss..."
  end
  if hero_hp <= 0
    puts "The hero is no more..."
    break
  elsif goblin_attack >= hero_armor
    hero_hp = hero_hp - goblin_dmg
    puts "Hit"
    puts "The goblin did " + goblin_dmg.to_s + " damage!"
  else 
    puts "Miss..."
  end
end




