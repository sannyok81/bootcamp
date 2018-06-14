require "breed_horses/version"
require "breed_horses/colors"

module BreedHorses
  GEN_LENGTHS = 2

  def self.breed(horse1, horse2)
    children = get_children(horse1, horse2)

    chance = Chance.new children

    chance.getChance
  end

  def self.get_color_array(horse)
    color = []
    i = 0
    while i < horse.color.length
      color << horse.color[i, GEN_LENGTHS]
      i += GEN_LENGTHS
    end

    color
  end

  def self.get_children(horse1, horse2)
    color1 = get_color_array(horse1)
    color2 = get_color_array(horse2)

    combinations = []

    for i in 0...color1.length
      combinations << get_combinations(color1[i], color2[i])
    end

    get_combinations(combinations[0], combinations[1])
  end

  def self.get_combinations(gen1, gen2)
    result = []
    for i in 0...gen1.length
      for j in 0...gen2.length
        result << [gen1[i], gen2[j]].sort.join
      end
    end
    result
  end

  class Chance
    include Colors

    def initialize (children)
      @count = children.length

      @group = {}

      children.each do |child|
        @group[child] = 0 unless @group.key?(child)

        @group[child] += 1
      end
    end

    def getChance
      result = {}

      @group.each do |key, value|
        result[colors.key(key)] = ((value.to_f/@count)*100).to_i
      end

      result
    end
  end
end
