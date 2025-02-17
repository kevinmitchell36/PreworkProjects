class Hero
  
  attr_accessor :name, :weapon1, :armor_rating, :hp, :current_hp

  def initialize(name, weapon1, armor_rating)
    @name = name
    @weapon1 = weapon1
    @armor_rating = armor_rating
    @hp = 10
    @current_hp = 10
  end

  def attack
    attack_roll = rand(1..20)
    return attack_roll
  end

  def damage
    damage_roll = rand(1..6)
    return damage_roll
  end

  def heal
    heal_amount = rand(1..10)
    @current_hp = @current_hp + heal_amount > 10 ? 10 : @current_hp + heal_amount
    return @current_hp
  end

  def rest 
    @current_hp = @hp
    return @current_hp
  end



end

