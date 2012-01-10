class Animal < ActiveRecord::Base
 attr_accessible :id, :name, :location, :sex, :abundance, :county, :grid,  :provenance, :observer, :startdate, :enddate,:determiner, :recordtype, :reference, :comment, :created_at

end
