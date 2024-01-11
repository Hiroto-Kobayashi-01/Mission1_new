require_relative '../FizzBuzz'

RSpec.describe "FizzBuzz" do
    it 'returns "fizz buzz" when the number is divisible by 15' do
        expect(fizz_buzz(15)).to eq('fizz buzz')
        expect(fizz_buzz(30)).to eq('fizz buzz')
    end

    it 'returns "fizz" when the number is divisible by 3' do
        expect(fizz_buzz(3)).to eq('fizz')
        expect(fizz_buzz(6)).to eq('fizz')
        expect(fizz_buzz(9)).to eq('fizz')
    end

    it 'returns "buzz" when the number is divisible by 5' do
        expect(fizz_buzz(5)).to eq('buzz')
        expect(fizz_buzz(10)).to eq('buzz')
        expect(fizz_buzz(20)).to eq('buzz')
    end
end