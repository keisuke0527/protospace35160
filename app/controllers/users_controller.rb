class UsersController < ApplicationController
  before_action :move_to_index, except: [:index, :show]

  def index
    @user = User.find(params[:id])
  end

  def new
    @user = User.new 
  end

  def edit
  end

  def show
    @user = User.find(params[:id])
    @prototypes = @user.prototypes
    #@protptypes = user.prototypes
    #@name = user.name
  end

  private

  ##def user_params
    #params.require(:user).permit(:name, :email)
  #end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end


end
