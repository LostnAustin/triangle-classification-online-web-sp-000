class Triangle
 attr_accessor :kind, :equilateral, :isosceles, :scalene

def initialize(side1, side2, side3)
  side_length.each {|key, value| self.send(("#{key}="), value)}
  end

  def kind
    self.kind = (equilateral || isosceles || scalene)



    end


  def equilateral
    if self.kind == ((side1 == side2) && (side2 == side3))
      self.kind = equilateral
    end

  def scalene
    if self.kind == ((side1 != side2) && (side2 != side3))
      self.kind == scalene
    end

  def isosceles
    if self.kind == ((side1 == side2) && (side1 != side3) || (side2 == side3) && (side2 != side1))
      self.kind == isosceles
    end

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

  class TriangleError < StandardError
    puts "lsdfl;sd"

  end


end
