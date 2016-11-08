require 'money'
require 'dollar'

describe Money do
  describe '.dollar' do
    it 'returns a value of type Dollar' do
      expect(Money.dollar(5).class).to be Dollar
    end

    it 'has same amount' do
      five_dollar = Dollar.new 5
      expect(five_dollar.amount).to eq 5
    end
  end

  describe '.franc' do
    it 'returns a value of type Franc' do
      expect(Money.franc(5).class).to be Franc
    end

    it 'has the same amount' do
      expect(Money.franc(5).amount).to be 5
    end
  end

  describe '#currency' do
    it 'returns `USD` when called on `Dollar`' do
      expect(Money.dollar(5).currency).to eq 'USD'
    end

    it 'returns `CHF` when called on `Franc`' do
      expect(Money.franc(5).currency).to eq 'CHF'
    end
  end
end
