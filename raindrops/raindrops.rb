module BookKeeping
  VERSION = 3
end

module Check

  def check_splash(kropla)
    string = String.new
    if kropla.modulo(3).zero?
      string << "Pling"
    end
    if kropla.modulo(5).zero?
      string << "Plang"
    end
    if kropla.modulo(7).zero?
      string << "Plong"
    end
    if (!kropla.modulo(7).zero? && !kropla.modulo(5).zero? && !kropla.modulo(3).zero?)
      string << "#{kropla}"
    end
    return string
  end

end


class Raindrops
  class << self
    include Check

    def convert(kropla)
      check_splash(kropla)
    end
  end
end
