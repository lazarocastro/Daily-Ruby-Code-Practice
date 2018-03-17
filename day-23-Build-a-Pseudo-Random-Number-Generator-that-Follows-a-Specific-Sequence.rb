require 'rspec'

def pseudo_random num
  srand 1

  fiber = Fiber.new do
    num.times do
      Fiber.yield rand 100
    end
  end
end

# i = pseudo_random 100  # => #<Fiber:0x0000000168ee20>
# i.resume               # => 37
# i.resume               # => 12
# i.resume               # => 72

describe 'Pseudo random number generator' do
  it 'creates the same sequence of random numbers' do
    random_sequence = pseudo_random 3
    expect(random_sequence.resume).to eq(37)
    expect(random_sequence.resume).to eq(12)
    expect(random_sequence.resume).to eq(72)
  end
end
