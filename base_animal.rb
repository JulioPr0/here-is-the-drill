module BaseAnimal
  def self.included(base)
    base.extend(ClassMethods)
  end

  module ClassMethods
    def has_fur?
      true
    end
  end

  def make_sound(sound)
    puts "#{self.class} makes #{sound}"
  end
end
