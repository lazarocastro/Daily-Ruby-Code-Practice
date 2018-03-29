 module BookKeeping
   VERSION = 7 # Where the version number matches the one in the test.
 end
  
class Gigasecond
  def self.from date
    date + 10**9
  end
end
