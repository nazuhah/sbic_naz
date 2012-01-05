class PagesController < ApplicationController

  def home
    @title = "Home"
  end

  def contact
    @title = "Contact"
  end

  def about
    @title = "About"
  end

  def help
    @title = "Help"
  end

 def services
    @title = "Services & Support"
  end
  def news
    @title = "News"
  end

 def enquiry
    @title = "Enquiry Services"
  end

def sightings
    @title = "Submit Sightings"
  end




end

