# Lets randomize the attack and damage stats then put everything in a continual loop.
hero_hp = 10
hero_armor_rating = 15


# Goblin stats
goblin_hp = 6
goblin_armor_rating = 10


# If the hero's hit is a success
while true
  hero_attack = rand(1..20)
  hero_damage = rand(1..10)
  goblin_attack = rand(1..20)
  goblin_damage = rand(1..6)
  if goblin_hp <= 0
    puts "The goblin dies by your blade"
    break
  elsif hero_attack >= goblin_armor_rating
    goblin_hp = goblin_hp - hero_damage
    puts "Hit"
    puts "You did " + hero_damage.to_s + " damage!"
  else 
    puts "Miss..."
  end
  if hero_hp <= 0
    puts "The hero is no more..."
    break
  elsif goblin_attack >= hero_armor_rating
    hero_hp = hero_hp - goblin_damage
    puts "Hit"
    puts "The goblin did " + goblin_damage.to_s + " damage!"
  else 
    puts "Miss..."
  end
end




