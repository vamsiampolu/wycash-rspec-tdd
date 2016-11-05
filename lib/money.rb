class Money

  attr_reader :amount

  def self.dollar(number)
    Dollar.new number
  end

  def ==(other)
    self.amount == other.amount
  end

end
