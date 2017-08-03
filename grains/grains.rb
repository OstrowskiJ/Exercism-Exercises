class Grains
  TOTAL = 64
  def self.square(grain)
    raise ArgumentError if (grain <= 0 || grain >=65)
    return 2.**(grain-1)
  end

  def self.total
    return 2.**(TOTAL) - 1
  end
end
