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


  def abc(moveOne, moveTwo)
    xyz[moveOne] > xyz[moveTwo]
  end

  # TODO: Fix this part and factor in it with the abc method
  it "where I have chosen rock and my opponent has
    chosen scissors" do
    expect(
      abc(xyz[:rock], xyz[:scissors])
    ).to eq true
  end

  it "where I have chosen scissors and my opponent has
    chosen rock" do
    expect(
      xyz[:scissors] < xyz[:rock]
    ).to eq true
  end

  it "where I have chosen scissors and my opponent has
    chosen paper" do
    expect(xyz[:scissors] > xyz[:paper]).to eq true
  end

  it "where I have chosen paper and my opponent
    has chosen scissors" do
    expect(xyz[:paper] < xyz[:scissors]).to eq true
  end

  it "where I have chosen paper and my opponent has
    chosen rock" do
    expect(xyz[:paper] > xyz[:rock]).to eq true
  end

  it "where I have chosen rock and my opponent
    has chosen paper" do
    expect(xyz[:rock] < xyz[:paper]).to eq true
  end

end
