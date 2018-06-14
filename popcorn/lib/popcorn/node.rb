class Node
  attr_reader :value

  attr_accessor :links

  def initialize(value)
    @value = value
    @links = Array.new
  end
end