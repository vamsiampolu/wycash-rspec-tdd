require 'money'

class Dollar < Money
  attr_reader :amount
  attr_reader :currency

  def initialize(number)
    @amount = number
    @currency = 'USD'
  end

  def times(mul)
    amount = @amount * mul
    Dollar.new(amount)
  end

  def ==(other)
    return false unless other.is_a? self.class
    super
  end
end
