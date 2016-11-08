class Money
  require 'franc'
  require 'dollar'
  attr_reader :amount

  def initialize(number, currency)
    @amount = number
    @currency = currency
  end

  def self.dollar(number)
    Dollar.new(number, 'USD')
  end

  def ==(other)
    @amount == other.amount
  end

  def self.franc(number)
    Franc.new(number, 'CHF')
  end
end
