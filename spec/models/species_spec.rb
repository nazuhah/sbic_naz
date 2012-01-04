require 'spec_helper'

describe Species do

  before(:each) do
    @attr = { :name => "Zyras lugens", :location => "A Dunlop" }
  end

  it "should create a new instance given valid attributes" do
   Species.create!(@attr)
  end

   it "should require a name" do
     no_name_species = Species.new(@attr.merge(:name => ""))
     no_name_species.should_not be_valid
  end

end

