require 'rspec'
require_relative '../solver'

describe Solver do

    describe "#factorial" do
        it 'returns 1 for factorial of 0' do
            expect(subject.factorial(0)).to eq(1)
        end
    end
end