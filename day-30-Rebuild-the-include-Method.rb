require 'rspec'  # => true

class Array
  def does_it_have? element
    each do |i|
      return true if i == element  # => false, false, false, false
    end                            # => [2, 5, 100, 4]

    false  # => false
  end      # => :does_it_have?
end        # => :does_it_have?

describe 'Include? clone' do
  it 'returns true if a supplied element is cinluded in an array' do
    arr = [2, 5, 100, 4]
    expect(arr.does_it_have? 5).to eq(true)
    expect(arr.does_it_have? 50).to eq(false)
  end                                                                 # => #<RSpec::Core::Example "returns true if a supplied element is cinluded in an array">
end                                                                   # => RSpec::ExampleGroups::IncludeClone

arr = [2, 5, 100, 4]   # => [2, 5, 100, 4]
arr.does_it_have? 500  # => false
