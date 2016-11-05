class Money

  attr_reader :amount

  def ==(other)
    self.amount == other.amount
  end

end
