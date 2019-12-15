class Triangle
 attr_accessor :side_length, :equilateral, :isosceles, :scalene

  def initialize(side_length)
  side_length.each {|key, value| self.send(("#{key}="), value)}
  end

  def kind

  end

  class TriangleError < StandardError

  end

end
