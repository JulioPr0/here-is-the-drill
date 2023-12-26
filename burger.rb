class Burger
  attr_accessor :ingredients
  attr_reader :task

  def initialize(ingredients, task)
    @ingredients = ingredients
    @task = task
  end

  def howto
    prepare_ingredients
    cook
    puts task
  end

  private

  def prepare_ingredients
    ingredients.each do |ing|
      preparation(ing)
    end
  end

  def preparation(what)
    puts "Prepare #{what}"
  end

  def cook
    puts "Cook the burger"
  end
end

class VeggieBurger < Burger
  def initialize(ingredients, task)
    super(ingredients, task)
  end

  def cook
    puts "Cook the veggie patty separately"
  end
end

veggie_ingredients = ['veggie patty', 'lettuce', 'tomato']
veggie_burger = VeggieBurger.new(veggie_ingredients, 'assemble')

veggie_burger.ingredients = ['tofu patty', 'spinach', 'avocado']

veggie_burger.howto
