module BookKeeping
  VERSION = 2
end

class Anagram
  def initialize(wyraz)
    @sorted = wyraz.downcase.chars.sort
    @unsorted = wyraz.downcase.chars
  end

  def match(tablica)
    tablica.keep_if { |slowo| slowo.downcase.chars.sort == @sorted && !(slowo.downcase.chars == @unsorted)}
  end
end
