class SpeciesCode < ActiveRecord::Base
belongs_to :species 
attr_accessible :name, :code

 def self.find_species
	species2 = SpeciesCode.find(:all)
      
end


end
