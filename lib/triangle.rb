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


    def kind

    if ((@side1 + @side2) <= @side3) || ((@side2 + @side3) <= @side1) || ((@side1 + @side3) <= @side2) || (@side1 * @side2 * @side3) == 0
        begin
          raise TriangleError
          puts error.message
        end

    elsif (@side1 == @side2) && (@side1 == @side3)
      self.kind = :equilateral



    elsif (@side1 == @side2)|| (@side1 == @side3) || (@side2 == @side3)
      self.kind = :isosceles


   self.kind = :scalene
  end
end



#      def scalene
#        if self.kind == ((@side1 != @side2) && (@side2 != @side3))
#        self.kind = :scalene
#      end
#    end




#  class TriangleError < StandardError
#    puts "lsdfl;sd"
#  end

end
