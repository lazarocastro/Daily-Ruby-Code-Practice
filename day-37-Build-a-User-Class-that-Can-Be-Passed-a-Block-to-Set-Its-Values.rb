require 'rspec'

class User
  attr_accessor :name, :email

  def initialize
    yield(self) if block_given?
  end
end

# user1 = User.new do |u|
#   u.name = "lazaro"
#   u.email = "test@test.com"
# end
# 
# user2 = User.new
# user2.name = "Lazaro"
# user2.email = "test@test.com"
# 
# user1
# user2

describe 'Block User' do
  it 'Allows a user to be created with a block of values' do
    user = User.new do |u|
      u.name = "Lazaro"
      u.email = "test@test.com"
    end

    expect(user.name).to eq('Lazaro')
    expect(user.email).to eq('test@test.com')
  end

  it 'Allows a user to be created witout default values' do
    user = User.new
    user.name = "Lazaro"
    user.email = "test@test.com"

    expect(user.name).to eq('Lazaro')
    expect(user.email).to eq('test@test.com')
  end
end

