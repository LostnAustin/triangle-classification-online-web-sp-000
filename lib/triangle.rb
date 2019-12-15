class Triangle
 attr_accessor :kind, :side1, :side2, :side3

def initialize(side1, side2, side3)
  @side1 = side1
  @side2 = side2
  @side3 = side3
  #side_length.each {|key, value| self.send(("#{key}="), value)}
  end


    def kind

    if ((side1 + side2) <= side3) || ((side2 + side3) <= side1) || ((side1 + side3) <= side2) || (side1 * side2 * side3) == 0 || (side1 == 0 || side2 == 0 || side3 == 0)
        begin
          raise TriangleError
          puts error.message
        end

    elsif (side1 == side2) && (side1 == side3)
      self.kind = :equilateral



    elsif (side2 == side3) && (side3 != side1) || (side1 == side2) && (side1 != side3) || (side1 == side3) && (side3 != side2)
      self.kind = :isosceles

    else
   self.kind = :scalene
  end
end


end
