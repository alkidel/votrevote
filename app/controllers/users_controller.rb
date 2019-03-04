class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def show
    # authorize @user
    @user_council_accord = ((Vote.of(@user).with_results.select { |vote| vote.result == vote.decision.result }.count.to_f /  @user.votes.with_results.count.to_f)*100).round(2)
    @user_public_accord = ((Vote.of(@user).with_results.select { |vote| vote.result == vote.decision.votes.group(:result).count.max[0] }.count.to_f /  @user.votes.with_results.count.to_f)*100).round(2)
    @user_categories = categories_by_numbers
    @user_top_category = @user_categories.first[0]
    @user_top_category_number_of_votes = ((Vote.of(@user).with_results.joins(:decision).group(:category).count.sort_by {|k,v| v}.reverse.first[1].to_f / @user.votes.with_results.count.to_f)*100).round(2)
  end

  def categories_by_numbers
    Vote.of(@user).with_results.joins(:decision).group(:category).count.sort_by {|k,v| v}.reverse.map do |category|
    [Decision.categories.key(category[0]), category[1]]
  end
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
