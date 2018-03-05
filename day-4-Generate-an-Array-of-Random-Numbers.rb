require 'rspec'

def random_numbers
  Array.new(1000) { rand 1000 }
end
p random_numbers.count

describe 'Random number collection generator' do
  it 'creates a collection of random numbers rangin from 1 to 1000' do
    random_set_one = random_numbers
    random_set_two = random_numbers
    expect(random_numbers.count).to eq(1000)
    expect(random_set_one).to_not eq(random_set_two)
  end
end

