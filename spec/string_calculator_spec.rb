require_relative '../string_calculator'

RSpec.describe StringCalculator do
  let(:calculator) { StringCalculator.new }

  describe '#add' do
    context 'with empty string input' do
      it 'returns 0' do
        expect(calculator.add("")).to eq(0)
      end
    end

    # with a single number input
    context 'with a single number input' do
      it 'returns the number itself after sum' do
        expect(calculator.add("1")).to eq(1)
        expect(calculator.add("5")).to eq(5)
      end
    end

    # with multiple numbers input
    context 'with multiple numbers' do
      it 'returns the sum of all numbers' do
        expect(calculator.add("1,2,3")).to eq(6)
        expect(calculator.add("1,2,3,4,5")).to eq(15)
      end
    end

    context 'with newline as delimiter' do
      it 'handles newlines between numbers' do
        expect(calculator.add("1\n2,3")).to eq(6)
        expect(calculator.add("1\n2\n3")).to eq(6)
      end
    end

    # with custom delimiter type input
    context 'with custom delimiter' do
      it 'supports custom single-character delimiter' do
        expect(calculator.add("//;\n1;2")).to eq(3)
        expect(calculator.add("//|\n1|2|3")).to eq(6)
      end

      it 'supports custom multi-character delimiter' do
        expect(calculator.add("//;\n1;2")).to eq(3)
      end

      it 'supports custom multi-character delimiter' do
        expect(calculator.add("//[***]\n1***2***3")).to eq(6)
      end

      it 'supports multiple custom delimiters' do
        expect(calculator.add("//[*][%]\n1*2%3")).to eq(6)
      end

      it 'supports multiple multi-character delimiters' do
        expect(calculator.add("//[**][%%]\n1**2%%3")).to eq(6)
      end
    end

    # with negative numbers input
    context 'with negative numbers' do
      it 'raises an exception with the negative number' do
        expect { calculator.add("1,-2,3") }.to raise_error("negative numbers not allowed -2")
      end

      it 'shows all negative numbers in the exception message' do
        expect { calculator.add("1,-2,-3,4") }.to raise_error("negative numbers not allowed -2, -3")
      end
    end
  end
end

