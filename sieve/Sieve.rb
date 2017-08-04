module BookKeeping
  VERSION = 1
end

class Sieve
  def initialize(number)
    @number = number.to_i
  end

  def primes
    return [] if @number < 2
    sito = [2]
      2.upto(@number) do |liczba|
        sito.each_with_index do |val,index|
          break if (liczba%val) == 0
          if (sito.length - 1) == index
            sito << liczba
          end
        end
      end
    sito
  end
end
