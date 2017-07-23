class MoviesController < ApplicationController
    
    def new_form
        
        render ("movies/new_form_movie.html.erb")
    end
    
    def create
        p = Movie.new

        p.save
        
        
        @current_count = Movie.count
        
        render ("movies/create_movie.html.erb")
    end
    
    def index
        
        render ("movies/index_movies.html.erb")
    end
    
    def show
         @photo = Photo.find(params["photo_id"])
        
        render ("movies/show_movie.html.erb")
    end
    
    def edit
         @photo = Photo.find(params["photo_id"])
        
        render ("movies/edit_movie.html.erb")
    end
    
    def update
        p = Photo.find(params[:photo_id])
        
        p.source = params[:the_source]
        p.caption = params[:the_caption]
        
        p.save
        
        render ("movies/update_movie.html.erb")
    end
    
    def destroy
         p = Photo.find(params["adios_id"])
        
        @photo_delete_id = params[:adios_id]
        
        p.destroy
        
        @remaining_count = Photo.count
        
        p.save
        
        render ("movies/destroy_movie.html.erb")
    end
    
end