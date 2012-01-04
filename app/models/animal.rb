class Animal < ActiveRecord::Base
 attr_accessible :name, :location, :sex, :abundance, :county, :grid,  :provenance, :observer, :startdate, :enddate,:determiner, :recordtype, :reference, :comment

end
