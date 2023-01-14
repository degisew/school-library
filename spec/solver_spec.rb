require_relative '../solver'
describe Solver do
  context 'When passed an input' do
    solver = Solver.new
    it 'Expect hello to be reversed to olleh' do
      expect(solver.reverse('hello')).to eq 'olleh'
    end
    it 'expect factorial of 4 to be 24' do
      expect(solver.factorial(4)).to eq 24
    end
    it 'expect positive number ' do
      expect(solver.factorial(4)).to be >= 0
    end
    it 'expect to raise error' do
      expect { solver.factorial(-1) }.to raise_error('Invalid number')
    end
    it 'expect one' do
      expect(solver.factorial(0)).to eq 1
    end
    it 'Expect 9 to return fizz' do
      expect(solver.fizzbuzz(9)).to eq 'fizz'
    end
    it 'Expect 20 to return buzz' do
      expect(solver.fizzbuzz(20)).to eq 'buzz'
    end
    it 'Expect 30 to return fizzbuzz' do
      expect(solver.fizzbuzz(30)).to eq 'fizzbuzz'
    end
    it 'Expect to equal that number' do
      expect(solver.fizzbuzz(7)).to eq 7
    end
  end
end
