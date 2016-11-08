class Money
  attr_reader :amount
  attr_reader :currency

  def initialize(number, currency)
    @amount = number
    @currency = currency
  end

  def self.dollar(number)
    Money.new(number, 'USD')
  end

  def ==(other)
    @amount == other.amount && @currency == other.currency
  end

  def self.franc(number)
    Money.new(number, 'CHF')
  end

  def to_s
    "#{@amount} #{@currency}"
  end

  def times(mul)
    amount = @amount * mul
    Money.new(amount, @currency)
  end
end
