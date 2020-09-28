class NamesController < ApplicationController
  def index
    @pagy, @names = pagy(Name.select('DISTINCT name, gender').order(name: :asc))
  end

  def show
  end
end
