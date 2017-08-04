module BookKeeping
  VERSION = 4
end

class Squares

  def initialize(number)
    @number = number.to_i
  end

  def sum_of_squares
    arr = (1..@number).to_a
    @sum_sq = 0
    arr.map! do |val|
      val**(2)
    end
    arr.each do |val|
      @sum_sq = @sum_sq + val
    end
    return @sum_sq
  end

  def square_of_sum
    arr = (1..@number).to_a
    @sum_sum = 0
    arr.each do |val|
      @sum_sum = @sum_sum + val
    end
    return @sum_sum = @sum_sum**(2)
  end

  def difference
    self.sum_of_squares
    self.square_of_sum
    diff = @sum_sum - @sum_sq
    return diff
  end

end
