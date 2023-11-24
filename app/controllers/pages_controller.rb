class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def dashboard
    @kitchens = current_user.kitchens
  end

  def home
  end
end
