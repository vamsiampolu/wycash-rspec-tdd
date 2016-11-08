class Money
  require 'franc'
  require 'dollar'
  attr_reader :amount

  def self.dollar(number)
    Dollar.new number
  end

  def ==(other)
    @amount == other.amount
  end

  def self.franc(number)
    Franc.new number
  end
end
