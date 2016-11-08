require 'money'
require 'franc'

describe Franc do
  describe '#times' do
    context 'running once' do
      it 'returns 10 for 5 times 2' do
        five = Money.franc(5)
        ten = Money.franc(10)
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
        five = Money.franc(5)
        five_again = Money.franc(5)
        ten = Money.franc(10)
        fifteen = Money.franc(15)
        product = five.times(2)
        expect(product).to eq ten
        product = five.times(3)
        expect(product).to eq fifteen
        expect(five).to eq five_again
      end
    end
  end

  describe '#==' do
    context 'amount is same' do
      it 'is true when amount is 5' do
        five_a = Money.franc 5
        five_b = Money.franc 5
        expect(five_a).to eq five_b
      end

      it 'is true when amount is 7' do
        seven_a = Money.franc 7
        seven_b = Money.franc 7
        expect(seven_a).to eq seven_b
      end
    end

    context 'amounts are different' do
      it 'is false when a is 5 and b is 7' do
        five = Money.franc 5
        seven = Money.franc 7
        expect(five).not_to eq seven
      end
    end

    context 'currencies are different' do
      it 'is false when comparing Dollars and Francs' do
        five_dollars = Money.dollar 5
        five_francs = Money.franc 5
        expect(five_francs == five_dollars).to be false
      end
    end
  end
end
