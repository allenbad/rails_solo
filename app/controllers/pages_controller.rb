class PagesController < ApplicationController
  def home
  end

  def index
    @users = User.includes(:location).all
  end
end
