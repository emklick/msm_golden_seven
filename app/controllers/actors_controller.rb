class ActorsController < ApplicationController
    
    def new_form
        
        render ("actors/new_form_actor.html.erb")
    end
    
    def create
        p = Actor.new
        
        p.save
        
        
        @current_count_actors = Actor.count
        
        render ("actors/create_actor.html.erb")
    end
    
    def index
        
        @list_of_actors = Actor.order(:created_at => :desc)
        
        render ("actors/index_actors.html.erb")
    end
    
    def show
        @actor = Actor.find(params["actor_number"])
        
        render ("actors/show_actor.html.erb")
    end
    
    def edit
        @actor = Actor.find(params["actor_number"])
        
        render ("actors/edit_actor.html.erb")
    end
    
    def update
        a = Actor.find(params[:actor_number])
        
        a.source = params[:the_source]
        a.caption = params[:the_caption]
        
        a.save
        
        render ("actors/update_actor.html.erb")
    end
    
    def destroy
         a = Actor.find(params["adios_actor_number"])
        
        @actor_delete_id = params[:adios_actor_number]
        
        a.destroy
        
        @remaining_count_actor = Actor.count
        
        a.save
        
        render ("actors/destroy_actor.html.erb")
    end
    
end