class CreateAnimals < ActiveRecord::Migration
  def self.up
    create_table :animals do |t|
      t.string :name
      t.string :location
      t.string :sex
      t.integer :abundance
      t.string :county
      t.string :grid
      t.string :provenance
      t.string :observer
      t.date :startdate
      t.date :enddate
      t.string :determiner
      t.string :recordtype
      t.string :reference
      t.string :comment

      t.timestamps
    end
  end
  
 def self.down
  drop_table :animals
  end 


end
