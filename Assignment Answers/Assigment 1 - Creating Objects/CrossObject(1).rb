
#The class Hybrid cross has 6 attributes and 1  method(action)
class Hybrid_Cross
    @@number_of_cross = 0
    attr_accessor :parent1 
    attr_accessor :parent2
    attr_accessor :f2_wild
    attr_accessor :f2_P1
    attr_accessor :f2_P2
    attr_accessor :f2_P1P2
  
    def initialize params = {}
        #Properties
        @@number_of_cross+= 1
        @parent1 = params.fetch(:parent1, 'unknow gene id')
        @parent2 = params.fetch(:parent2, 'unknow gene name')
        @f2_wild = params.fetch(:f2_wild, 'unknow f2_wild')
        @f2_P1 = params.fetch(:f2_P1, 'unknow f2_P1')
        @f2_P2= params.fetch(:f2_P2, 'unknow f2_P2')
        @f2_P1P2 = params.fetch(:f2_P1P2, 'unknow f2_P1P2')
    end
    def how_many 
      return @@number_of_cross
    end
    def chi2
      total = f2_wild.to_f + f2_P1.to_f + f2_P2.to_f + f2_P1P2.to_f
      f2_wild_esperated = (total*9)/16
      f2_P1_esperated = (total*3)/16
      f2_P2_esperated = (total*3)/16
      f2P1P2_esperated = (total*1)/16
      result = ((f2_wild.to_f - f2_wild_esperated)**2 /f2_wild_esperated) + ((f2_P1.to_f - f2_P1_esperated)**2 /f2_P1_esperated) + ((f2_P2.to_f - f2_P2_esperated)**2 /f2_P2_esperated) +((f2_P1P2.to_f - f2_P1P2_esperated)**2 /f2_P1P2_esperated)
      return result
      
    end 

end


