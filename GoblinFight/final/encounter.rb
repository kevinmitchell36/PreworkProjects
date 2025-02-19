class Encounter
  
  def random_encounter
    result = encounter_chance
    if (result >= 1 && result <= 5)
      return true
    end
  end

  def encounter_chance
    chance = rand(1..20)
    return chance
  end

end