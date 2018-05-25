class Horse
  include Colors

  attr_reader :color, :name

  def initialize (colorName)
    raise NoColorError, "No color '#{colorName}'" unless colors.has_key? colorName
    @color = colors[colorName]
    @name = colorName
  end
end