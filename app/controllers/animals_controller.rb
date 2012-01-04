class AnimalsController < ApplicationController

 before_filter :authenticate, :only => [:index,:show,:edit, :update, :destroy]
  before_filter :correct_user, :only => [:edit, :update]
  before_filter :admin_user,   :only => :destroy

  def new
    @animal = Animal.new
    @title = "Sign up"
  end

def index
     @title = "All users"
     @animals = Animal.paginate(:page => params[:page])
  end


    def show  
      @animal = Animal.find(params[:id]) 
     @title = @animal.name
   end 



  def create
    @animal = Animal.new(params[:animal])
    if @animal.save
      #sign_in @user
      flash[:success] = "Thanks for recording the species"
      redirect_to @animal
    else
      @title = "Sign up"
      render 'new'
    end
  end

  def edit
    @animal = Animal.find(params[:id])
    @title = "Edit user"
  end


  def update
    @animal = Animal.find(params[:id])
    if @animal.update_attributes(params[:animal])
      flash[:success] = "Profile updated."
      redirect_to @user
    else
      @title = "Edit user"
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
      deny_access unless signed_in?
    end

    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_path) unless current_user?(@user)
    end

     def admin_user
      redirect_to(root_path) unless current_user.admin?
    end


end
