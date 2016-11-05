require 'money'

class Franc < Money

  attr_reader :amount

  def initialize(number)
    @amount = number
  end

  def times(mul)
    amount = @amount * mul
    Franc.new(amount)
  end

end
