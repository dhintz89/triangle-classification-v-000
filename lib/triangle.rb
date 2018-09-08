class Triangle
  attr_accessor :a_size,  :b_size, :c_size
  
  def initialize(a, b, c)
    @a_size = a
    @b_size = b
    @c_size = c
  end
  
  def kind
    if @a_size + @b_size < @c_size || @a_size + @c_size < @b_size || @b_size + @c_size < @a_size || dimensions.any?(0)
      
    dimensions = [@a_size, @b_size, @c_size]
    if dimensions.uniq.length == 1 
      :equilateral
    elsif dimensions.uniq.length == 2
      :isosceles
    else
      :scalene
    end
  end
end

tri = Triangle.new(1,2,1)
tri.kind
