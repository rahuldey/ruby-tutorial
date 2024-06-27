describe "nested hooks" do

  before(:context) do # runs once before outer context
    puts 'OUTER Before context'
  end

  before(:example) do # runs once before examples in current context and nested context
    puts 'OUTER Before example'
  end

  it "does basic math" do
    expect(1 + 1).to eq(2)
  end

  context 'with condition A' do
    before(:context) do # runs once before inner context
      puts 'INNER Before context'
    end

    before(:example) do  # runs once before examples in current context, but only afer the before(:example) from outer context has run
      puts 'INNER Before example'
    end

    it "does basic math" do
      expect(1 + 1).to eq(2)
    end

    it "does subtraction as well" do
      expect(1 - 1).to eq(0)
    end
  end

end
