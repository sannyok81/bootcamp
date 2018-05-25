require 'breed_horses/colors'
require 'breed_horses/horse'

RSpec.describe BreedHorses do
  include Colors

  it "has a version number" do
    expect(BreedHorses::VERSION).not_to be nil
  end

  it "No color error" do
    expect { Horse.new "Pink" }.to raise_error(Colors::NoColorError)
  end

  it "get_color_array" do
    expect(["Aa", "Tt"]).to eq(BreedHorses.get_color_array(Horse.new "Amber"))
  end

  it "get_combinations" do
    expect((%w(AA aa) + (["Aa"] * 2)).sort).to eq(BreedHorses.get_combinations("Aa", "Aa").sort)
  end

  it "get_children" do
    horse1 = Horse.new("Almond")
    horse2 = Horse.new("Bittersweet")

    expect(Array.new(16, "AaTt")).to eq(BreedHorses.get_children(horse1, horse2))
  end

  context "Freddy and Teddy breeding chance" do
    before do
      @freddy = Horse.new("Alizarin crimson")
      @teddy = Horse.new("Begonia")
    end

    it "get_children" do
      expect(Array.new(8, "AATt") + Array.new(8, "AaTt").sort).to eq(BreedHorses.get_children(@freddy, @teddy).sort)
    end

    it "breed" do
      expect({"Alloy orange" => 50, "Amber" => 50}).to eq(BreedHorses.breed(@freddy, @teddy))
    end
  end
end
