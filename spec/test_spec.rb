require "rspec"

describe "test" do
  def isWinningMove? myMove, bothMoves
    myMove == "rock"
  end
  it "when playing rock against scissors" do
    expect(
      isWinningMove? "rock", ["rock", "scissors"]
      ).to eq true
  end
    it "when playing scissors against paper" do
    expect(
      isWinningMove? "scissors", ["paper", "scissors"]
      ).to eq true
  end
    it "when my move is not in both moves" do
  expect(
    isWinningMove? "scissors", ["paper", "rock"]
    ).to eq false
  end
end
