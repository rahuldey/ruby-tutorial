def sections(headline)
  puts "\n" + headline + "\n\n"
end

sections("# organise test cases that the describe blocks and it blocks can read like a sentence.")

RSpec.describe '#even? method' do
  describe 'with even number' do # the descriptions in each of these blocks should not contain works like if and when, if they do then extract them to a describe/context block
    it 'should return true' do
      expect(4.even?).to eq(true)
    end
  end

  context 'with odd number' do # context is an alias for describe
    it 'should return false' do
      expect(5.even?).to eq(false)
    end
  end

end
