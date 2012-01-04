class Addcolumntospecies < ActiveRecord::Migration
  def self.up
	add_column:species, :sex, :string
	add_column:species, :abundance, :integer 
	add_column:species, :county, :string 
	add_column:species, :grid, :string 
	add_column:species, :provenance, :string 
	add_column:species, :observer, :string 
	add_column:species, :startdate, :date 
	add_column:species, :enddate, :date 
	add_column:species, :determiner, :string 
	add_column:species, :recordtype, :string 
	add_column:species, :reference, :string 
	add_column:species, :comment, :string
  end

  def self.down
	remove_column:species, :sex, :string
	remove_column:species, :abundance, :integer 
	remove_column:species, :county, :string 
	remove_column:species, :grid, :string 
	remove_column:species, :provenance, :string 
	remove_column:species, :observer, :string 
	remove_column:species, :startdate, :date 
	remove_column:species, :enddate, :date 
	remove_column:species, :determiner, :string 
	remove_column:species, :recordtype, :string 
	remove_column:species, :reference, :string 
	remove_column:species, :comment, :string
  end
end
