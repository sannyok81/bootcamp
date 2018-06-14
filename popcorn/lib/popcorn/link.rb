class Link
  attr_reader :first, :second

  def initialize(first, second)
    @first = first
    @second = second

    first.links << self
    second.links << self
  end

  def get_other_value node
    @first == node ? @second : @first
  end
end