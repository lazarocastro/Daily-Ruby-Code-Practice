require 'rspec'

def increment_value str
  str + str.next.slice(-1)
end
increment_value 'abcd'
increment_value '1234'
increment_value 'abcd'

describe 'Increment string value squence' do
  it 'appends the next item in the sequence of a string' do
    expect(increment_value 'abcde').to eq('abcdef')
    expect(increment_value '123').to eq('1234')
  end
end
