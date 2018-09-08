class Triangle
  attr_accessor :a_size,  :b_size, :c_size
  
  def initialize(a, b, c)
    @a_size = a
    @b_size = b
    @c_size = c
  end
  
  def kind
    dimensions = [@a_size, @b_size, @c_size]
    if dimensions.all? == @a_size 
      :equilateral
    elsif 
end
