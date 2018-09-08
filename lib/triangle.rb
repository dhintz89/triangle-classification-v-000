  class TriangleError < StandardError
    def message
      "That is not a valid triangle"
    end
  end
  
  class Triangle
  attr_accessor :a_size,  :b_size, :c_size
  
  def initialize(a, b, c)
    @a_size = a
    @b_size = b
    @c_size = c
  end
  
  def kind
    dimensions = [@a_size, @b_size, @c_size]
    if @a_size + @b_size < @c_size || @a_size + @c_size < @b_size || @b_size + @c_size < @a_size || dimensions.any? {|i| i <= 0}
      begin
        raise TriangleError
      rescue TriangleError => error
        puts error.message
      end
    else
      if dimensions.uniq.length == 1 
        :equilateral
      elsif dimensions.uniq.length == 2
        :isosceles
      else
        :scalene
      end
    end
  end
  

end