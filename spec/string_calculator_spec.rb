require_relative '../string_calculator'

RSpec.describe StringCalculator do
  let(:calculator) { StringCalculator.new }

  describe '#add' do
    context 'with empty string input' do
      it 'returns 0' do
        expect(calculator.add("")).to eq(0)
      end
    end

    context 'with a single number input' do
      it 'returns the number itself after sum' do
        expect(calculator.add("1")).to eq(1)
        expect(calculator.add("5")).to eq(5)
      end
    end
  end
end

