# Make Ruby Write Code for You

- [video](http://confreaks.tv/videos/rubyconf2018-make-ruby-write-your-code-for-you)
- [magic-modules](github.com/googlecloudplatform/magic-modules)


"Auto-geneartion": Writing code that writes code for you.

It's not:
* No blockchain
* No machine learning
* No compiler magic
* Meta-programming (but it kinda is...not sure I agree with the RubyConf speaker.)

When to auto-generate?
* If you find yourself copying and pasting code.

## Suppse you have some code with a repeatable pattern
```ruby
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
```

## Extract the similar code to a template file using ERB
```ruby
<% @foods.each do |food, toppings| %>
  def self.order<%= food.capitalize %>
    food = <%= food.capitalize %>.new()
  <% toppings.each do |t| %>
    food.add("<%= t %>")<% end %>
    return food
  end
<% end %>
```

## Extract the code that is specific to each instance of the pattern, e.g. class and method names
In this case, we're using a YAML file to store these details
```yaml
pizza:
  - sauce
  - sausage
  - cheese
taco:
  - tortilla
  - carnitas
  - cheese
  - onion
  - cilatnro
sandwich:
  - sourdough
  - ham
  - cheese
```

## Script to populate the templates
This is a simple script that uses the details from the YAML file to populate the ERB template files.
```ruby
require 'yaml'
require 'erb'

@foods = YAML.load_file(File.join(__dir__, 'foods.yaml'))

template_source = File.read(File.join(__dir__,'./order_foods_template.erb'))

template = ERB.new(template_source)

File.open('order_foods_v2.rb', 'w') do |f|
  f.write template.result(binding)
end
```

