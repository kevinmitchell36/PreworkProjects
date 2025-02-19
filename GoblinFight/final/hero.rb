class Hero
  
  attr_accessor :name, :prime_weapon, :sec_weapon, :armor_rating, :hp, :current_hp 
  
  def initialize(name, weapon1, weapon2, armor_rating)
    @name = name
    @prime_weapon = weapon1
    @sec_weapon = weapon2
    @armor_rating = armor_rating
    @hp = 10
    @current_hp = 10
  end

  def initiative
    initiative_roll = rand(1..10)
    return initiative_roll
  end

  def attack
    attack_roll = rand(1..20)
    return attack_roll
  end

  def prime_damage
    damage_roll = rand(1..6)
    return damage_roll
  end

  def sec_damage
    damage_roll = rand(2..5)
    return damage_roll
  end

  def heal
    heal_amount = rand(2..6)
    @current_hp = @current_hp + heal_amount > 10 ? 10 : @current_hp + heal_amount
    return @current_hp
  end

  def rest 
    @current_hp = @hp
    return @current_hp
  end

  def block
    block_amount = rand(1..5)
    @armor_rating = @armor_rating + block_amount
    puts "Hero armor - #{@armor_rating}"
    return @armor_rating
  end

  def spell
    spell_damage = rand (2..4)
    return spell_damage
  end

end

