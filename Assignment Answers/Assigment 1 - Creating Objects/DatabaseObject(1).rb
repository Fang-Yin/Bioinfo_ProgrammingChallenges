
#The class Seed_stock has 5 attributes(properties) and 1 method (actions)
class SeedStock
     @@number_of_stock = 0
    attr_accessor :seed_Stock  
    attr_accessor :mutant_Gene_ID
    attr_accessor :last_Planted
    attr_accessor :storange
    attr_accessor :grams_Remaining
  
    def initialize params = {}
        #Attributes
        @@number_of_stock+= 1 #Increment the number of seed by one
        @seed_Stock = params.fetch(:seed_Stock, 'seed_Stock_unknow')
        @mutant_Gene_ID = params.fetch(:mutant_Gene_ID, 'mutant_Gene_id_unknow')
        @last_Planted = params.fetch(:last_Planted, 'unknow date')
        @storange = params.fetch(:storange, 'unknow storange')
        @grams_Remaining = params.fetch(:grams_Remaining, 'unknow remaining grams')
    end
    def how_many 
      return @@number_of_stock
    end
    #number_of_seed_planted
    def plant 
        new_grams = grams_Remaining.to_i-(7) #new grams are remaing grams after planting 7g
        if new_grams >= 0
            return "#{seed_Stock}" #if in the stock we have > 0 after planting 7g, it should return the new stock
        else
            return "No more grams to plant"
        end
    end
    
end


