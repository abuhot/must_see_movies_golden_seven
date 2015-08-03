class DirectorsController < ApplicationController
  def index
    @list_of_directors = Director.all
  end

  def show

  @id = params[:id]
  @director = Director.find(@id)
  @name = @director.name
  @bio = @director.bio
  @dob =@director.dob
  @image_url = @director.image_url

  end

def destroy

    @id = params[:id]
    @director = Director.find(@id)

    @director.destroy

    redirect_to("http://localhost:3000/directors")


  end

  def new_form

    render("new_form.html.erb")


  end

  def create_row

    @name = params[:name]
    @bio = params[:bio]
    @dob = params[:dob]
    @image_url = params[:image_url]

    d = Director.new
    d.name = @name
    d.bio  = @bio
    d.dob = @dob
    d.image_url = @image_url

    d.save

    redirect_to("http://localhost:3000/directors")

  end


  def edit_form

    @id = params[:id]
    @director = Director.find(@id)


  end

  def update_row

   name = params[:name]
   bio = params[:bio]
   dob = params[:dob]
   image_url = params[:image_url]

   id = params[:id]
   d = Director.find(id)
   d.name = name
   d.bio = bio
   d.dob = dob
   d.image_url = image_url
   d.save

   redirect_to("http://localhost:3000/directors")

  end


end
