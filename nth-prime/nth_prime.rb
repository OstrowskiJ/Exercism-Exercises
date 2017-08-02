class Prime

  def self.nth(number)
    raise ArgumentError if number <= 0

    @number = number.to_i
    sito = [2]

    2.upto(Float::INFINITY) do |liczba|
      break if !sito[@number].nil?
        sito.each_with_index do |val,index|
          if liczba%val == 0
            break
          elsif index == (sito.length - 1) && !sito.include?(liczba)
            sito << liczba
          end
        end
    end
    
    return sito[sito.length-2]
  end

end
