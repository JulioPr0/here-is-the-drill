require_relative 'base_animal'

class Animal
  include BaseAnimal

  CAN_CLIMBING = true

  attr_accessor :num_legs

  def initialize(legs)
    @num_legs = legs
  end

  def self.is_breathing?
    true
  end

  def meow
    puts "Meow!"
  end
end
