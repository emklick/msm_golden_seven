class ActorsController < ApplicationController
    
    def new_form
        
        render ("actors/new_form_actor.html.erb")
    end
    
    def create
        
        render ("actors/create_actor.html.erb")
    end
    
    def index
        
        render ("actors/index_actors.html.erb")
    end
    
    def show
        
        render ("actors/show_actor.html.erb")
    end
    
    def edit
        
        render ("actors/edit_actor.html.erb")
    end
    
    def update
        
        render ("actors/update_actor.html.erb")
    end
    
    def destroy
        
        render ("actors/destroy_actor.html.erb")
    end
    
end