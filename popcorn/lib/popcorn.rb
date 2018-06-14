require "popcorn/version"
require "popcorn/popcorn_graph"
require "popcorn/node"

module Popcorn
  include PopcornGraph

  VOCABULARY = %w(pop popcorn corn cop no poop porno)

  def self.find_all
    words = Set.new

    NODES.each do |node|
      (words += find_by_node(node)) if node
    end

    words
  end

  def self.find_by_node node, str = '', words = Set.new
    str += node.value

    return words unless contain_part_word str

    words << str.downcase if is_word str

    node.links.each do |link|
      find_by_node link.get_other_value(node), str, words
    end

    words
  end

  def self.contain_part_word word
    VOCABULARY.each do |item|
      return item if item.downcase.index(word.downcase) == 0
    end

    return nil
  end

  def self.is_word (word)
    VOCABULARY.include? word.downcase
  end
end
