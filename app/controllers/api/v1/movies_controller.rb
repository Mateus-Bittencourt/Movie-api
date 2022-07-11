class Api::V1::MoviesController < Api::V1::BaseController
  def index
    @movies = Movie.all.order(year: :desc)
  end

  def show
    @movie = Movie.find(params[:id].downcase)
  end

  def show_by_title
    @movie = Movie.where(title: params[:title].split('-').map!(&:capitalize).join(' ')).first
  end

  def list_by_genre
    if params[:genre].upcase == 'TV-SHOW'
      params[:genre] = 'TV Show'
    else
      params[:genre].capitalize!
    end
    @movies = Movie.where(genre: params[:genre]).order(year: :desc)
  end

  def list_by_genre_year
    if params[:genre].upcase == 'TV-SHOW'
      params[:genre] = 'TV Show'
    else
      params[:genre].capitalize!
    end
    @movies = Movie.where(year: params[:year], genre: params[:genre]).order(year: :desc)
  end

  def list_by_genre_country
    if params[:genre].upcase == 'TV-SHOW'
      params[:genre] = 'TV Show'
    else
      params[:genre].capitalize!
    end
    @movies = Movie.where(country: params[:country].split('-').map!(&:capitalize).join(' '),
                          year: params[:year],
                          genre: params[:genre]).order(year: :desc)
  end
end
