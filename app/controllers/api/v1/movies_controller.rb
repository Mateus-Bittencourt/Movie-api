class Api::V1::MoviesController < Api::V1::BaseController
  def index
    @movies = Movie.all.order(year: :desc)
  end

  # def show
  #   @movie = Movie.where(title: params[:title])
  # end
end
