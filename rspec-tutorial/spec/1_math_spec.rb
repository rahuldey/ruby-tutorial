RSpec.describe 'math calculations' do
  it 'does basic math' do
    expect(5 + 4).to eq(9)
    expect(5 * 4).to eq(20)
    expect(5 - 4).to eq(1)
    expect(8 / 4).to eq(2)
  end
end
