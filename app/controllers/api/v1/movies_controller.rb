class Api::V1::MoviesController < Api::V1::BaseController
  def index
    @movies = Movie.all.order(year: :desc)
  end

  def genre
    @movies = Movie.where(genre: params[:genre]).order(year: :desc)
  end

  def year
    @movies = Movie.where(year: params[:year], genre: params[:genre]).order(year: :desc)
  end

  def country
    @movies = Movie.where(country: params[:country],year: params[:year], genre: params[:genre]).order(year: :desc)
  end

  def show_by_title
    @movie = Movie.where(title: params[:title] ).first
  end
end
