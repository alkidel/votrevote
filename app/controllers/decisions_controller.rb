class DecisionsController < ApplicationController
  before_action :set_decision, only: [:show, :edit, :update, :destroy]

  def index
    @decisions = Decision.all
      # @category = params[:query]
      # @address = params[:address]
      # if @address.present? && @category.present?
      #   @boats = policy_scope(Boat)
      #   @boats = Boat.where(address: @address).where(category: @category).where.not(latitude: nil, longitude: nil)
      # elsif @address.present?
      #   @boats = policy_scope(Boat)
      #   @boats = Boat.where(address: @address).where.not(latitude: nil, longitude: nil)
      # elsif @category.present?
      #   @boats = policy_scope(Boat)
      #   @boats = Boat.where(category: @category).where.not(latitude: nil, longitude: nil)
      # else
      #   @boats = policy_scope(Boat)
      #   @boats = Boat.where.not(latitude: nil, longitude: nil)
  end

  def show
    # authorize @boat
    # @decision = Decision.where(id: params[:id])
  end

  def new
    @decision = Decision.new
    # authorize @boat
  end

  def edit
  end

  def create
    @decision = Decision.new(decision_params)
    # @boat.user = current_user
    # authorize @boat
    if @decision.save
      redirect_to decision_path(@decision)
    else
      render :new
    end
  end

  def update
    # authorize @boat
    @decision.update(decision_params)
  end

  def destroy
    # authorize @boat
    @decision.destroy
    redirect_to decisions_path
  end

  private

  def decision_params
    params.require(:decision).permit(:title, :category, :description, :council_date, :result, :minutes, :town_id, :photo)
  end

  def set_decision
    @decision = Decision.find(params[:id])
  end
end
