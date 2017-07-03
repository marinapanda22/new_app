class ProfilesController < ApplicationController
  def edit
    @user = User.find(params[:id])
  end

  def show
    @user = User.find(params[:id])
  end
end

def update
  @user = User.find(params[:id])
  if @user.update(profile_params)
    flash[:success] = 'Your profile has been updated'
    redirect_to profile_path(@user.id)
  else
    @user.errors.full_messages
    flash[:error] = @user.errors.full_messages
    render :edit
  end
end
private

def profile_params
  params.require(:user).permit(:name)
end