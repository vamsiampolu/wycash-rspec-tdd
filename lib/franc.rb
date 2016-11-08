require 'money'

class Franc < Money
  attr_reader :amount
  attr_reader :currency

  def initialize(number)
    @amount = number
    @currency = 'CHF'
  end

  def times(mul)
    amount = @amount * mul
    Franc.new(amount)
  end

  def ==(other)
    return false unless other.is_a? self.class
    super
  end
end
