class Triangle
 attr_accessor :kind, :equilateral, :isosceles, :scalene, :side1, :side2, :side3

def initialize(side1, side2, side3)
  @side1 = side1
  @side2 = side2
  @side3 = side3
  #side_length.each {|key, value| self.send(("#{key}="), value)}
  end

    def side1
      @side1 = side1
    end

    def side2
      @side2 = side2
    end

    def side3
      @side3 = side3
    end



    def pass_tri_inequality(side1, side2, side3)
      unless ((@side1 + @side2) <= @side3) || ((@side2 + @side3) <= @side1) || ((@side1 + @side3) <= @side2) || (@side1 * @side2 * @side3) == 0
        return true
          raise TriangleError
      end

    def equilateral
      if (@side1 = @side2) && (@side2 = @side3) && pass_tri_inequality
      self.kind = :equilateral
        end
      end

    def scalene
      if self.kind == ((@side1 != @side2) && (@side2 != @side3))
      self.kind = :scalene
    end
  end

    def isosceles
      if self.kind == ((@side1 == @side2) && (@side1 != @side3) || (@side2 == @side3) && (@side2 != @side1))
      self.kind == :isosceles
    end
  end

  def kind
    self.kind = (equilateral || isosceles || scalene)

    if self.class != (equilateral || isosceles || scalene)
      begin
        raise TriangleError
      rescue TriangleError => error
        puts error.message
      end
    else
        triangle.kind = self
        end
      end

  end
#  class TriangleError < StandardError
#    puts "lsdfl;sd"
#  end

end
