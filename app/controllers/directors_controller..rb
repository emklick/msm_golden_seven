class DirectorsController < ApplicationController
    
    def new_form
        
        render ("directors/new_form_director.html.erb")
    end
    
    def create
        p = Photo.new
        
        p.source = params[:the_source]
        p.caption = params[:the_caption]
        
        p.save
        
        
        @current_count = Photo.count
        
        render ("directors/create_director.html.erb")
    end
    
    def index
        
        render ("directors/index_directors.html.erb")
    end
    
    def show
        @photo = Photo.find(params["photo_id"])
        
        render ("directors/show_director.html.erb")
    end
    
    def edit
        @photo = Photo.find(params["photo_id"])
        
        render ("directors/edit_director.html.erb")
    end
    
    def update
        p = Photo.find(params[:photo_id])
        
        p.source = params[:the_source]
        p.caption = params[:the_caption]
        
        p.save
        
        render ("directors/update_director.html.erb")
    end
    
    def destroy
         p = Photo.find(params["adios_id"])
        
        @photo_delete_id = params[:adios_id]
        
        p.destroy
        
        @remaining_count = Photo.count
        
        p.save
        
        render ("directors/destroy_director.html.erb")
    end
    
end