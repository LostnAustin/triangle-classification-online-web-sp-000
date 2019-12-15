class Triangle
 attr_accessor :kind

def initialize(side1, side2, side3)
  side_length.each {|key, value| self.send(("#{key}="), value)}
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

  class TriangleError < StandardError

  end

end
