class CreateCountyCodes < ActiveRecord::Migration
  def self.up
    create_table :county_codes do |t|
      t.string :name

      t.timestamps
    end
  end

   def self.down
  drop_table :county_codes
  end 
end
