class Label
  attr_accessor :title, :color, :items

  def initialize(title, color)
    @title = title
    @color = color
    @items = []
  end

  def add_item(item)
    @items << item unless @items.include?(item)
    item.label = self unless item.label == self
  end
end
