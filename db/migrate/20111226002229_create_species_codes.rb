class CreateSpeciesCodes < ActiveRecord::Migration
  def self.up
    create_table :species_codes do |t|
      t.string :name
      t.string :code

      t.timestamps
    end
  end
  
 def self.down
    drop_table :species_codes
  end
   
end
