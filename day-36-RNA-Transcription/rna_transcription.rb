module BookKeeping
  VERSION = 4
end

class Complement
  def self.of_dna dna
    dna = dna.upcase.chars
    rna = []

    if (dna & ["U", "X"]).any?
      return dna = ""
    end

    dna.map do |dna|
      if dna == 'C'
        rna.push "G"
      elsif dna == 'G'
        rna.push "C"
      elsif dna == 'T'
        rna.push "A"
      else
        rna.push "U"
      end
    end
    rna.join('')
  end
end
