require "rspec"

describe "test" do
  def xyz
    {
      rock: 0,
      paper: 1,
      scissors: 2
    }
  end

  it do
    expect(xyz[:rock] < xyz[:paper]).to eq true
  end
  it do
    expect(xyz[:paper] < xyz[:scissors]).to eq true
  end
  it do
    expect(
      xyz[:scissors] < xyz[:rock] ||
        xyz[:scissors] -2 == xyz[:rock]
    ).to eq true
  end

end
