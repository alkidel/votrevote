class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @decisions = Decision.all
  end
end
