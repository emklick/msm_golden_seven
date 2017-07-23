Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount WebGit::Engine, at: "/rails/git"
  
# CREATE

# ACTORS
  get("/actors/new", :controller => "actors", :action => "new_form")
  get("/create_actor", :controller => "actors", :action => "create")

# DIRECTORS  
  get("/directors/new", :controller => "directors", :action => "new_form")
  get("/create_director", :controller => "directors", :action => "create")

# MOVIES  
  get("/movies/new", :controller => "movies", :action => "new_form")
  get("/create_movie", :controller => "movies", :action => "create")
  
  
# READ

# ACTORS
  get("/actors", :controller => "actors", :action => "index")
  get("/actors/:actor_entry_number", :controller => "actors", :action => "show")
  
# DIRECTORS  
  get("/directors", :controller => "directors", :action => "index")
  get("/directors/:director_entry_number", :controller => "directors", :action => "show")
  
# MOVIES   
  get("/movies", :controller => "movies", :action => "index")
  get("/movies/:movie__entry_number", :controller => "movies", :action => "show")
  

# UPDATE

# ACTORS
  get("/actors/:actor_name/edit", :controller => "actors", :action => "edit")
  get("/update_actor/:actor_name", :controller => "actors", :action => "update")
  
# DIRECTORS
  get("/directors/:director_name/edit", :controller => "directors", :action => "edit")
  get("/update_director/:director_name", :controller => "directors", :action => "update")

# MOVIES   
  get("/movies/:movie_title/edit", :controller => "movies", :action => "edit")
  get("/update_movie/:movie_title", :controller => "movies", :action => "update")
  
  
# DESTROY

# ACTORS
  get("/destroy_actor/", :controller => "actors", :action => "destroy")

# DIRECTORS   
  get("/destroy_director/", :controller => "directors", :action => "destroy")

# MOVIES  
  get("/destroy_movie/", :controller => "movies", :action => "destroy")
  
  
end
