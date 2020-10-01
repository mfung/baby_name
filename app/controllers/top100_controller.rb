class Top100Controller < ApplicationController
  def show
    @female_names = Name.where(gender: 'F', year: params[:year]).where('rank <= 100').order(rank: :asc)
    @male_names = Name.where(gender: 'M', year: params[:year]).where('rank <= 100').order(rank: :asc)
  end
end
