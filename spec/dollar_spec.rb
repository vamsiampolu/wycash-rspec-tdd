require 'dollar'
require 'franc'

describe Dollar do
  describe '#times' do
    context 'running once' do

      it 'returns 10 for 5 times 2' do
        five = Dollar.new(5)
        ten = Dollar.new(10)

        product = five.times(2)
        expect(product).to eq ten
      end

      it 'returns 21 for 7 times 3' do
        seven = Dollar.new(7)
        twentyOne = Dollar.new(21)

        product = seven.times(3)
        expect(product).to eq twentyOne
      end

    end

    context 'running muliple times' do

      it 'does not modify original amount' do

       five = Dollar.new(5)
       five_again = Dollar.new(5)
       ten = Dollar.new(10)
       fifteen = Dollar.new(15)

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
        five_a = Dollar.new 5
        five_b = Dollar.new 5
        expect(five_a).to eq five_b
      end 

      it 'is true when amount is 7' do
        seven_a = Dollar.new 7
        seven_b = Dollar.new 7
        expect(seven_a).to eq seven_b
      end

    end 

    context 'amounts are different' do

      it 'is false when a is 5 and b is 7' do
        five = Dollar.new 5 
        seven = Dollar.new 7
        expect(five).not_to eq seven
      end

    end

    context 'comparing different currency types' do

     it 'false if comparing dollars and francs' do

      five_dollars = Dollar.new(5)
      five_francs = Franc.new(5)

      expect(five_dollars == five_francs).to be false

      end

    end

  end

end
