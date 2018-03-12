require 'rspec'

menu = {
  'appetizers':  ['Chips', 'Quesadillas', 'Flatbread'],
  'entrees':     ['Steak', 'Chicken', 'Lobster'],
  'dessers':     ['Cheesecake', 'Cake', 'Cupcake']
}

def daily_special hash
  menu_items = []
  hash.map { |category| menu_items << category.last }.flatten.sample
end

# umcomment if you want to test with "seeing_is_believing"
# daily_special(menu)

describe 'Nest hash element selctor' do
  it 'selected a random element from the set of nested arrays' do
    expect(daily_special(menu).class).to eq(String)
  end
end
