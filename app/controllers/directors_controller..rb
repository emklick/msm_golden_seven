class DirectorsController < ApplicationController
    
    def new_form
        
        render ("directors/new_form_director.html.erb")
    end
    
    def create
        
        render ("directors/create_director.html.erb")
    end
    
    def index
        
        render ("directors/index_directors.html.erb")
    end
    
    def show
        
        render ("directors/show_director.html.erb")
    end
    
    def edit
        
        render ("directors/edit_director.html.erb")
    end
    
    def update
        
        render ("directors/update_director.html.erb")
    end
    
    def destroy
        
        render ("directors/destroy_director.html.erb")
    end
    
end