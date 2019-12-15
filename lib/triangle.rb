class Triangle
 attr_accessor :kind

def initialize(side1, side2, side3)
  side_length.each {|key, value| self.send(("#{key}="), value)}
  end

  def kind
    self.triangle = (equilateral || isosceles || scalene)
    if triangle.class != Triangle
      begin
        raise TriangleError
      rescue TriangleError => error
        puts error.message
      end
    else
        .triangle = self

  end

  class TriangleError < StandardError

  end

end
