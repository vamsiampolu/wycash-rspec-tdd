require 'money'

describe Money do
  describe '.dollar' do
    it 'has same amount' do
      five_dollar = Money.dollar(5)
      expect(five_dollar.amount).to eq 5
    end
  end

  describe '.franc' do
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

  describe '#to_s' do
    context 'Dollars' do
      it 'returns X USD' do
        expect(Money.dollar(10).to_s).to eq '10 USD'
      end
    end

    context 'Francs' do
      it 'returns X CHF' do
        expect(Money.franc(10).to_s).to eq '10 CHF'
      end
    end
  end

  describe '#times' do
    context 'running once' do
      it 'returns 10 for 5 times 2' do
        five = Money.dollar(5)
        ten = Money.dollar(10)
        product = five.times(2)
        expect(product).to eq ten
      end

      it 'returns 21 for 7 times 3' do
        seven = Money.franc(7)
        twenty_one = Money.franc(21)
        product = seven.times(3)
        expect(product).to eq twenty_one
      end
    end

    context 'running muliple times' do
      it 'does not modify original amount' do
        five = Money.dollar(5)
        five_again = Money.dollar(5)
        ten = Money.dollar(10)
        fifteen = Money.dollar(15)
        product = five.times(2)
        expect(product).to eq ten
        product = five.times(3)
        expect(product).to eq fifteen
        expect(five).to eq five_again
      end
    end
  end
end
