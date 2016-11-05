require 'money'

class Dollar < Money

  attr_reader :amount

  def initialize(number)
    @amount = number
  end

  def times(mul)
    amount = @amount * mul
    Dollar.new(amount)
  end

end
