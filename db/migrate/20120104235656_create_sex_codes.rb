class CreateSexCodes < ActiveRecord::Migration
  def self.up
    create_table :sex_codes do |t|
      t.string :name

      t.timestamps
    end
  end
 def self.down
  drop_table :sex_codes
  end 
  
end
