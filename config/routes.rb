Rails.application.routes.draw do

  #Create new records
 get("/director/new",       { :controller => "directors", :action => "new_form" })
 get("/actor/new",       { :controller => "actors", :action => "new_form" })
 get("/movie/new",       { :controller => "movies", :action => "new_form" })

 get("/create_director", { :controller => "directors", :action => "create_row" })
 get("/create_actor", { :controller => "actors", :action => "create_row" })
get("/create_movie", { :controller => "movies", :action => "create_row" })

#Edit existing Records
get("/directors/:id/edit", { :controller => "directors", :action => "edit_form" })
get("/update_director/:id", { :controller => "directors", :action => "update_row" })

get("/actors/:id/edit", { :controller => "actors", :action => "edit_form" })
get("/update_actor/:id", { :controller => "actors", :action => "update_row" })

get("/movies/:id/edit", { :controller => "movies", :action => "edit_form" })
get("/update_movie/:id", { :controller => "movies", :action => "update_row" })

#Index pages
get("/directors",           { :controller => "directors", :action => "index" })
get("/actors",           { :controller => "actors", :action => "index" })
get("/movies",           { :controller => "movies", :action => "index" })

#show full bios
get("/directors/:id",       { :controller => "directors", :action => "show" })
get("/actors/:id",       { :controller => "actors", :action => "show" })
get("/movies/:id",       { :controller => "movies", :action => "show" })

#delete records
get("/delete_directors/:id",       { :controller => "directors", :action => "destroy" })
get("/delete_actors/:id",       { :controller => "actors", :action => "destroy" })
get("/delete_movies/:id",       { :controller => "movies", :action => "destroy" })



end
