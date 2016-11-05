class Dollar
  attr_reader :amount
  def initialize(number)
    @amount = number
  end

  def times(mul)
    amount = @amount * mul
    Dollar.new(amount)
  end

  def ==(other)
    self.amount == other.amount
  end
end
