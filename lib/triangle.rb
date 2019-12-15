class Triangle
 attr_accessor :equilateral, :isosceles, :scalene

  def initialize(attributes)
   attributes.each {|key, value| self.send(("#{key}="), value)}
  end


  class TriangleError < StandardError

  end

end
