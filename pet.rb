require_relative 'animal'

class Pet < Animal
  def human_friendly?
    true
  end
end

puts Pet::CAN_CLIMBING.to_s
