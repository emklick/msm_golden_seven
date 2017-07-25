Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount WebGit::Engine, at: "/rails/git"
  
# CREATE

# ACTORS - NEW & CREATE
  get("/actor/new", :controller => "actors", :action => "new_form")
  get("/create_actor", :controller => "actors", :action => "create")

# DIRECTORS - NEW & CREATE
  get("/director/new", :controller => "directors", :action => "new_form")
  get("/create_director", :controller => "directors", :action => "create")

# MOVIES - NEW & CREATE  
  get("/movie/new", :controller => "movies", :action => "new_form")
  get("/create_movie", :controller => "movies", :action => "create")
  
  
# READ

# ACTORS - INDEX & DETAILS/SHOW
  get("/actors", :controller => "actors", :action => "index")
  get("/actors/:actor_entry_number", :controller => "actors", :action => "show")
  
# DIRECTORS - INDEX & DETAILS/SHOW  
  get("/directors", :controller => "directors", :action => "index")
  get("/directors/:director_entry_number", :controller => "directors", :action => "show")
  
# MOVIES - INDEX & DETAILS/SHOW   
  get("/movies", :controller => "movies", :action => "index")
  get("/movies/:movie_entry_number", :controller => "movies", :action => "show")
  

# UPDATE

# ACTORS - EDIT & UPDATE
  get("/actors/:actor_entry_number/edit", :controller => "actors", :action => "edit")
  get("/update_actor/:actor_entry_number", :controller => "actors", :action => "update")
  
# DIRECTORS - EDIT & UPDATE
  get("/directors/:director_entry_number/edit", :controller => "directors", :action => "edit")
  get("/update_director/:director_entry_number", :controller => "directors", :action => "update")

# MOVIES - EDIT & UPDATE   
  get("/movies/:movie_entry_number/edit", :controller => "movies", :action => "edit")
  get("/update_movie/:movie_entry_number", :controller => "movies", :action => "update")
  
  
# DESTROY

# ACTORS
  get("/delete_actor/:adios_actor_number", :controller => "actors", :action => "destroy")

# DIRECTORS   
  get("/delete_director/:adios_director_number", :controller => "directors", :action => "destroy")

# MOVIES  
  get("/delete_movie/:adios_movie_number", :controller => "movies", :action => "destroy")
  
  
end
