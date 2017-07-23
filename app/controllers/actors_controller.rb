class ActorsController < ApplicationController
    
    def new_form
        
        render ("actors/new_form_actor.html.erb")
    end
    
    def create
        p = Actor.new
        
        p.save
        
        
        @current_count = Actor.count
        
        render ("actors/create_actor.html.erb")
    end
    
    def index
        
        render ("actors/index_actors.html.erb")
    end
    
    def show
        @photo = Actor.find(params["photo_id"])
        
        render ("actors/show_actor.html.erb")
    end
    
    def edit
        @photo = Actor.find(params["photo_id"])
        
        render ("actors/edit_actor.html.erb")
    end
    
    def update
        p = Actor.find(params[:photo_id])
        
        p.source = params[:the_source]
        p.caption = params[:the_caption]
        
        p.save
        
        render ("actors/update_actor.html.erb")
    end
    
    def destroy
         p = Actor.find(params["adios_id"])
        
        @photo_delete_id = params[:adios_id]
        
        p.destroy
        
        @remaining_count = Actor.count
        
        p.save
        
        render ("actors/destroy_actor.html.erb")
    end
    
end