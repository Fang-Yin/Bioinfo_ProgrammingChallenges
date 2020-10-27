
#The class gene has 3 attributes
class Gene
    @@number_of_gene = 0 #SET THE STARTING VALUE
    attr_accessor :gene_ID 
    attr_accessor :gene_name
    attr_accessor :mutant_phenotype
  
    def initialize params = {}
        #Attributes
        @@number_of_gene+= 1 #Increment the number of genes by one
        @gene_ID = params.fetch(:gene_ID, 'unknow gene id')
        @gene_name = params.fetch(:gene_name, 'unknow gene name')
        @mutant_phenotype = params.fetch(:mutant_phenotype, 'unknow mutant phenotype')
    end
    def how_many 
      return @@number_of_gene
    end
end




