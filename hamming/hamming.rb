module BookKeeping
  VERSION = 3
end

class Hamming
  def self.compute(first,second)
    raise ArgumentError if first.length != second.length
    licznik = 0
    first.length.times do |i|
      if first[i] != second[i]
        licznik+=1
      end
    end
    return licznik
  end
end
