class HomeController < ApplicationController
  def index
    @dashboard = Dashboard.new
  end
end
