class MoviesController < ApplicationController
    
    def new_form
        
        render ("movies/new_form_movie.html.erb")
    end
    
    def create
        
        render ("movies/create_movie.html.erb")
    end
    
    def index
        
        render ("movies/index_movies.html.erb")
    end
    
    def show
        
        render ("movies/show_movie.html.erb")
    end
    
    def edit
        
        render ("movies/edit_movie.html.erb")
    end
    
    def update
        
        render ("movies/update_movie.html.erb")
    end
    
    def destroy
        
        render ("movies/destroy_movie.html.erb")
    end
    
end