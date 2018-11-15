class DashboardController < ApplicationController
  def index
    @categories = Category.order(:order)
  end
end
