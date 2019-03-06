class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
end


def default_url_options
  { host: ENV["http://www.votre.vote/"] || "localhost:3000" }
end
