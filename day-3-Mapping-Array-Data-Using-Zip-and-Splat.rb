require 'rspec'

eaders = [
  '1B',
  '2B',
  '3B',
  'SS',
  'C',
  'P',
  'LF',
  'CF',
  'RF'
]

stros = [
  'Gurriel',
  'Altuve',
  'Bregman',
  'Correa',
  'Gattis',
  'Keuchel',
  'Beltran',
  'Springer',
  'Reddick'
]

angers =[
  'Fielder',
  'Andrus',
  'Odor',
  'Beltre',
  'Lucroy',
  'Darvish',
  'Gomez',
  'Choo',
  'Mazara'
]

# You can use "*" <--splat operator for resolve this problem
def position_filter(headers, *data)
  headers.zip(*data)
end

# Example:
# position_filter headers, astros, rangers

describe 'Position Filter' do
  it 'lines up players with their positions' do
    test_headers = ['1B', '2B', 'P']
    test_team = ['First Base Player', 'Second Base Player', 'Pitcher']
    expect(position_filter(test_headers, test_team).first).to eq(['1B', 'First Base Player'])
  end
end
