module OrderFoods
  class Pizza
    attr_reader :toppings

    def initialize
      @toppings ||= []
    end

    def add(topping)
      toppings.push(topping)
    end
  end

  class Taco
    attr_reader :toppings

    def initialize
      @toppings ||= []
    end

    def add(topping)
      toppings.push(topping)
    end
  end

  def self.orderPizza()
    food = Pizza.new()
    food.add("sausage")
    food.add("cheese")
    food.add("sauce")
    return food
  end

  def self.orderTaco()
    food = Taco.new()
    food.add("carnitas")
    food.add("cilantro")
    food.add("onions")
    return food
  end
end

OrderFoods.orderPizza.toppings.each do |t|
  puts t
end

OrderFoods.orderTaco.toppings.each do |t|
  puts t
end