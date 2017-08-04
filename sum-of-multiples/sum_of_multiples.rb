module BookKeeping
  VERSION = 1
end

class SumOfMultiples

  def initialize(*args)
    @args = *args
  end

  def to(range)
    range = (1..range).to_a
    arr = []
    suma = 0
    @args.each do |val|
      range.each do |ran|
        if ran%val == 0 && !arr.include?(ran) && (ran != range.last)
          arr << ran
          suma = suma + ran
        end
      end
    end
    return suma
  end

end
