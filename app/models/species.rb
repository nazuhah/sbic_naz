class Species < ActiveRecord::Base
#belongs_to :species_code  
attr_accessible :name, :location, :sex, :abundance, :county, :grid,  :provenance, :observer, :startdate, :enddate,:determiner, :recordtype, :reference, :comment

 validates :name, :presence => true

end
