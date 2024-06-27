RSpec.describe 'before and after hooks' do

  before(:context) do
    puts "Runs once at the start of the parent context/describe block"
  end

  after(:context) do
    puts "Runs once at the end of the parent context/describe block"
  end

  before(:example) do # if tests share state then the state can be reset here in the before block
    puts 'Before example'
  end

  after(:example) do
    puts 'After example'
  end

  it 'is just a random example' do
    expect(5 * 4).to eq(20)
  end

  it 'is just another randome example' do
    expect(3 - 2).to eq(1)
  end
end
