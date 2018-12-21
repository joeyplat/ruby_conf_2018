module OrderFoodsV2

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

  class Sandwich
    attr_reader :toppings

    def initialize
      @toppings ||= []
    end

    def add(topping)
      toppings.push(topping)
    end
  end


  def self.orderPizza
    food = Pizza.new()
  
    food.add("sauce")
    food.add("sausage")
    food.add("cheese")
    return food
  end
  
  def self.orderTaco
    food = Taco.new()
  
    food.add("tortilla")
    food.add("carnitas")
    food.add("cheese")
    food.add("onion")
    food.add("cilatnro")
    return food
  end
  
  def self.orderSandwich
    food = Sandwich.new()
  
    food.add("sourdough")
    food.add("ham")
    food.add("cheese")
    return food
  end
  
end

