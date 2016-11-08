require 'money'

class Dollar < Money
  attr_reader :amount
  attr_reader :currency

  def initialize(number, currency)
    super(number, currency)
  end

  def times(mul)
    amount = @amount * mul
    Money.dollar(amount)
  end

  def ==(other)
    return false unless other.is_a? self.class
    super
  end
end
