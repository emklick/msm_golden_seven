class ActorsController < ApplicationController
    
    def new_form
        
        render("actors/new_form_actor.html.erb")
    end
    
    def create
        a = Actor.new
        
        a.name = params["actor_name"]
        a.bio = params["actor_bio"]
        a.dob = params["actor_dob"]
        a.image_url = params ["actor_image"]
        
        a.save
        
        
        @current_count_actors = Actor.count
        
        render("actors/create_actor.html.erb")
    end
    
    def index
        
        @list_of_actors = Actor.order(:created_at => :desc)
        
        render("actors/index_actors.html.erb")
    end
    
    def show
        @actor = Actor.find(params[:actor_entry_number])
        
        render("actors/show_actor.html.erb")
    end
    
    def edit
        @actor = Actor.find(params["actor_entry_number"])

        a.name = params["actor_name"]
        a.bio = params["actor_bio"]
        a.dob = params["actor_dob"]
        a.image_url = params ["actor_image"]
        
        a.save
        
        render("actors/edit_actor.html.erb")
    end
    
    def update
        a = Actor.find(params[:actor_entry_number])
        
        a.name = params["actor_name"]
        a.bio = params["actor_bio"]
        a.dob = params["actor_dob"]
        a.image_url = params ["actor_image"]
        
        @actor_name = params[:actor_name]
        @actor_id = params[:actor_entry_number]
        
        a.save
        
        render("actors/update_actor.html.erb")
    end
    
    def destroy
        a = Actor.find(params["adios_actor_number"])
        
        @actor_delete_id = params[:adios_actor_number]
        
        a.destroy
        a.save
        @remaining_count_actor = Actor.count
        
        
        render("actors/destroy_actor.html.erb")
        redirect("actors/index_actors.html.erb")
    end
    
end