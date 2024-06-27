def sections(headline)
  puts "\n" + headline + "\n\n"
end

require('./src/card')

sections("# test cases for Card")

RSpec.describe Card do

  sections("# test cases using before to instantiate the Card object")

  before do # same as before(:example) do
    puts "setup code before each example"
    @card = Card.new('Ace', 'Spades') # before each example a branch new Card object is created as an instance variable for the test
  end

  it 'has a suit spades' do
    expect(@card.suit).to eq('Spades')
  end

  specify 'has a rank Ace' do # test case using specify is the same as using it
    expect(@card.rank).to eq('Ace')
  end

  sections("# test cases using a method to instantiate the Card object")

  # methods have the disadvantage that every time they are called a new object is created
  # it can be solved using memoization
  def card
    Card.new('Queen', 'Hearts')
  end

  it 'has a suit hearts' do
    expect(card.suit).to eq('Hearts')

    # the below code will fail test case
    # card.suit = "Spades"
    # expect(card.suit).to eq('Spades')
  end

  it 'has a rank queen' do
    expect(card.rank).to eq('Queen')
  end

  sections("# test cases using a the let keyword that creates a lazy loaded memoized instance of a class")

  # block is executed once per test i.e. memoized
  # block keeps tests isolated
  # block is lazily executed, the block is not executed till the object is required, tests that don't need the object don't get it
  let(:memoCard) { Card.new('King', 'Hearts')}


  it 'has a suit hearts for memo object' do
    expect(memoCard.suit).to eq('Hearts')
    memoCard.suit = "Spades"
    expect(memoCard.suit).to eq('Spades')
  end


  sections("# test cases using a the let! keyword that creates an eagerly loaded memoized instance of a class")

  let!(:num) { 5 * 3 }

  it 'expects num to match' do
    expect(num).to eq(15)
  end

  sections("# test cases with custom error messages")

  let!(:num) { 5 * 3 }

  it 'expects num to match with custom message' do
    expect(num).to eq(15), "Num: #{num} should equal to 15"
  end
end
