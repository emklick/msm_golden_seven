class MoviesController < ApplicationController
    
    def new_form
        
        render ("movies/new_form_movie.html.erb")
    end
    
    def create
        p = Movie.new

        p.save
        
        
        @current_count_movies = Movie.count
        
        render ("movies/create_movie.html.erb")
    end
    
    def index
        
        @list_of_movies = Movie.order(:created_at => :desc)
        
        render ("movies/index_movies.html.erb")
    end
    
    def show
        @movie = Movie.find(params["movie_number"])
        
        render ("movies/show_movie.html.erb")
    end
    
    def edit
        @movie = Movie.find(params["movie_number"])
        
        render ("movies/edit_movie.html.erb")
    end
    
    def update
        m = Movie.find(params[:movie_number])
        
        m.source = params[:the_source]
        m.caption = params[:the_caption]
        
        m.save
        
        render ("movies/update_movie.html.erb")
    end
    
    def destroy
        m = Movie.find(params["adios_movie_number"])
        
        @movie_delete_id = params[:adios_movie_number]
        
        m.destroy
        
        @remaining_count_movie = Movie.count
        
        m.save
        
        render ("movies/destroy_movie.html.erb")
    end
    
end