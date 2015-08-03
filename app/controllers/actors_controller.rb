class ActorsController < ApplicationController
  def index
    @list_of_actors = Actor.all
  end

  def show

  @id = params[:id]
  @actor = Actor.find(@id)
  @name = @actor.name
  @bio = @actor.bio
  @dob =@actor.dob
  @image_url = @actor.image_url

  end

  def destroy

    @id = params[:id]
    @actor = Actor.find(@id)

    @actor.destroy

    redirect_to("http://localhost:3000/actors")


  end

  def create_row

    @name = params[:name]
    @bio = params[:bio]
    @dob = params[:dob]
    @image_url = params[:image_url]

    d = Actor.new
    d.name = @name
    d.bio  = @bio
    d.dob = @dob
    d.image_url = @image_url

    d.save

    redirect_to("http://localhost:3000/actors")

  end

  def edit_form

    @id = params[:id]
    @actor = Actor.find(@id)

  end

   def update_row

   name = params[:name]
   bio = params[:bio]
   dob = params[:dob]
   image_url = params[:image_url]

   id = params[:id]
   a = Actor.find(id)
   a.name = name
   a.bio = bio
   a.dob = dob
   a.image_url = image_url
   a.save

   redirect_to("http://localhost:3000/actors")

  end


end
