puts 'Cleaning database'
Card.destroy_all

# Creating Values
puts 'Creating card values'
values = [
  {name: '2', force: 2},
  {name: '3', force: 3},
  {name: '4', force: 4},
  {name: '5', force: 5},
  {name: '6', force: 6},
  {name: '7', force: 7},
  {name: '8', force: 8},
  {name: '9', force: 9},
  {name: '10', force: 10},
  {name: 'Jack', force: 11},
  {name: 'Queen', force: 12},
  {name: 'King', force: 13},
  {name: 'As', force: 14}
]
values.each {|value| Value.create!(name: value[:name], force: value[:force])}

# Creating Colors
puts 'Creating card colors'
colors = [
  {name: 'Club', force: 1},
  {name: 'Spade', force: 2},
  {name: 'Diamond', force: 3},
  {name: 'Heart', force: 4}
]
colors.each {|color| Color.create!(name: color[:name], force: color[:force])}

# Creating Cards
puts 'Creating playing Cards'
colors.each do |color|
  this_color = Color.find_by name: color[:name]
  values.each do |value|
    this_value = Value.find_by name: value[:name]
    card = Card.create!(color: this_color, value: this_value)
  end
end
