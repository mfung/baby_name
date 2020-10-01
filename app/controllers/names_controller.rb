class NamesController < ApplicationController
  def index
    @pagy, @names = pagy(Name.filter(params.slice(:name)).select('DISTINCT name, gender').order(name: :asc))
  end

  def show
    @names = Name.where(name: params[:name]).order('year ASC, gender ASC')
    @labels = @names.pluck(:year).uniq.sort
    @female_name_data = @names.where(gender: 'F').pluck(:amount)
    @male_name_data = @names.where(gender: 'M').pluck(:amount)
  end
end
