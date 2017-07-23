class ActorsController < ApplicationController
    
    def new_form
        
        render("actors/new_form_actor.html.erb")
    end
    
    def create
        @actor_new = Actor.new
        
        @actor_new.save
        
        
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
        
        @actor.save
        
        render("actors/edit_actor.html.erb")
    end
    
    def update
        @actor = Actor.find(params[:actor_entry_number])
    
        
        @actor.save
        
        render("actors/update_actor.html.erb")
    end
    
    def destroy
        @actor_delete = Actor.find(params[:adios_actor_number])
        
        @actor_delete_id = params[:adios_actor_number]

        @actor_delete.destroy
        @actor_delete.save
        
        @remaining_count_actor = Actor.count
        
        
        render("actors/destroy_actor.html.erb")
        # redirect_to("actors/index_actors.html.erb")
    end
    
end