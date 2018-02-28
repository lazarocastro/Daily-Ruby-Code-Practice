require 'rspec'
# require 'benchmark'


# arr = Array.new(100_000_000) { rand 1000 }

def new_max array_of_elements
  max_value = 0

  array_of_elements.each do |i|
    if i > max_value
      max_value = i
    end
  end
  max_value
end

# If you want to know which method is faster, uncomment the benchmark below and require 'benchmark' on top.
# Benchmark.bm(10) do |x|
#   x.report('Each: ') { new_max arr}
#   x.report('Sorted: ') { arr.sort.last }
#   x.report('Max: ') { arr.max }
# end



describe 'New Max method' do
 it 'returns the max value from an array efficiently' do
   test_array = [2, 4, 10, 2, 1]
   expect(new_max(test_array)).to eq(10)
 end
end
