class MoviesController < ApplicationController
  def index
    @list_of_movies = Movie.all
  end

  def show

  @id = params[:id]
  @movie = Movie.find(@id)
  @title = @movie.title
  @year = @movie.year
  @duration = @movie.duration
  @description = @movie.description

  end

  def destroy

    @id = params[:id]
    @movies = Movie.find(@id)

    @movies.destroy

    redirect_to("http://localhost:3000/movies")


  end

  def create_row

    @title = params[:title]
    @year = params[:year]
    @duration = params[:duration]
    @description = params[:description]
    @image_url = params[:image_url]

    d = Movie.new
    d.title = @title
    d.year  = @year
    d.duration = @duration
    d.description = @description
    d.image_url = @image_url

    d.save

    redirect_to("http://localhost:3000/movies")

  end

    def edit_form

    @id = params[:id]
    @movie = Movie.find(@id)


    end

     def update_row

       title = params[:title]
       year = params[:year]
       duration = params[:duration]
       description = params[:description]
       image_url= params[:image_url]

       id = params[:id]
       m = Movie.find(id)
       m.title = title
       m.year = year
       m.duration = duration
       m.description = description
       m.image_url = image_url
       m.save

       redirect_to("http://localhost:3000/movies")

      end


end
