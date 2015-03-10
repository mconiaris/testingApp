require "rspec"

describe "test" do
  def isWinningMove? move
    move == "rock"
  end
  it do
    expect(
      isWinningMove? "rock"
      ).to eq true
  end
end
