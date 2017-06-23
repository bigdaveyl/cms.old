class UsersController < ApplicationController
  before_action :authenticate_user!,except:[:show]
  before_action :user_owner, only: [:edit, :update]

  
  def show
    @user = User.find(params[:id])
    @title = "Profile of " + @user.username

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @user }
    end
  end

  def edit
    @user = User.find(params[:id])
    @title = "Editing User Profile"
  end

  def update
    @user = User.find(params[:id])
    @title = "Updating User"

    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, :notice => 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @user.errors, :status => :unprocessable_entity }
      end
    end
  end

  private

  def user_params
    params.require(:user).permit(:biography, :avatar)
  end

  def user_owner
    @user = User.find(params[:id])
    unless @user.id == current_user.id
     flash[:notice] = 'Access denied as you are not owner of this profile'
     redirect_to action: "show", id: @user.user_id
    end
  end
end
