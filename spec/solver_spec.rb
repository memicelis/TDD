require 'rspec'
require_relative '../solver'

describe Solver do
  describe '#factorial' do
    it 'returns 1 for factorial of 0' do
      expect(subject.factorial(0)).to eq(1)
    end

    it 'returns ArgumentError for negative integers' do
      expect { subject.factorial(-2) }.to raise_error(ArgumentError, 'Input must be non-negative integer')
    end

    it 'returns correct factorial for positive integer' do
      expect(subject.factorial(1)).to eq(1)
      expect(subject.factorial(5)).to eq(120)
    end
  end

  describe '#reverse' do
    it 'returns word reversed' do
      expect(subject.reverse('hello')).to eq('olleh')
    end
  end

  describe '#fizzbuzz' do
    it 'returns fizz when is n is divisible by 3' do
      expect(subject.fizzbuzz(3)).to eq('fizz')
    end
    it 'returns buzz when is n is divisible by 5' do
      expect(subject.fizzbuzz(5)).to eq('buzz')
    end
    it 'returns fizz when is n is divisible by 3 and 5' do
      expect(subject.fizzbuzz(15)).to eq('fizzbuzz')
    end
    it 'return n as string ' do
      expect(subject.fizzbuzz(7)).to eq('7')
    end
  end
end
