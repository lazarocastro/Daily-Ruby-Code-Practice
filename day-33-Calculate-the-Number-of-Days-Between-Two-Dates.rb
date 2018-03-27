require 'rspec'  # => true
require 'date'   # => true

def day_counter
  Integer(Date.new(2016, 12, 25) - Date.new(2004, 07, 01))
end                                                         # => :day_counter

# Integer(day_counter)  # => 4560
# day_counter.to_i      # => 4560

describe 'Day counter' do
  it 'counts the days between Chrismas in 2016 and July 1, 2004' do
    expect(day_counter).to eq(4560)
  end                                                                # => #<RSpec::Core::Example "counts the days between Chrismas in 2016 and July 1, 2004">
end                                                                  # => RSpec::ExampleGroups::DayCounter
