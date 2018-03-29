module BookKeeping
  VERSION = 16 # Where the version number matches the one in the test.
end

class Hamming
  def self.compute a, b

    unless a.length == b.length
      raise ArgumentError
    end

    count = 0
    a.upcase.chars.zip(b.upcase.chars).map do |a, b|
      count += 1 if a != b
    end

    count
  end
end

