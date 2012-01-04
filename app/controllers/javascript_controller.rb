class JavascriptController < ApplicationController
	def dynamic_state
	  @jenis = SpeciesCode.find(:all)
	end
end
