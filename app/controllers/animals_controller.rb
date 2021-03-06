class AnimalsController < ApplicationController

 before_filter :authenticate, :only => [:index,:show,:edit, :update, :destroy]
 
  before_filter :admin_user,   :only => [:destroy, :edit, :udpdate]

  def new
    @animal = Animal.new
    @title = "Record Species"
  end

def index
     @title = "All species"
     @animals = Animal.paginate(:page => params[:page])
  end


    def show  
      @animal = Animal.find(params[:id]) 
     @title = @animal.name
   end 



  def create
    @animal = Animal.new(params[:animal])
    if @animal.save      
      flash[:success] = "Thank you for recording the species"
      redirect_to @animal
    end
  end

  def edit
    @animal = Animal.find(params[:id])
    @title = "Edit species"
  end


  def update
    @animal = Animal.find(params[:id])
    if @animal.update_attributes(params[:animal])
      flash[:success] = "Species updated."
      redirect_to @animal
    else
      @title = "Edit species"
      render 'edit'
    end
  end 

  
def destroy
    Animal.find(params[:id]).destroy
    flash[:success] = "Species destroyed."
    redirect_to animals_path
  end


private
    
    def authenticate
       #deny_access unless signed_in?
    end


     def admin_user
      redirect_to(root_path) unless current_user.admin?
    end


end
