module BookKeeping
  VERSION = 4
end

class Complement
    def self.of_dna(string)
      string = string.chars.to_a
      string.map! do |val|
      case val
      when 'C'
        val = 'G'
      when 'G'
        val = 'C'
      when 'T'
        val = 'A'
      when 'A'
        val = 'U'
      else
        string = Array.new
      end
    end
    return string.join()
  end
end
