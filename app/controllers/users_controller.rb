class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def show
    # authorize @user
  end

  def new
    @user = User.new
    # authorize @user
  end

  def edit
  end

  def create
    @user = User.new(user_params)
    # authorize @user
    if @user.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def update
    # authorize @user
    @user.update(user_params)
  end

  def destroy
    # sauthorize @user
    @user.destroy
    redirect_to users_path
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :phone_number, :photo)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
