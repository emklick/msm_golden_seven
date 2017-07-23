class MoviesController < ApplicationController
    
    def new_form
        
        render("movies/new_form_movie.html.erb")
    end
    
    def create
        @movie_new = Movie.new
        
        @movei_new.save
        
        
        @current_count_movies = Movie.count
        
        render("movies/create_movie.html.erb")
    end
    
    def index
        
        @list_of_movies = Movie.order(:created_at => :desc)
        
        render("movies/index_movies.html.erb")
    end
    
    def show
        @movie = Movie.find(params[:movie_entry_number])
        
        render ("movies/show_movie.html.erb")
    end
    
    def edit
        @movie = Movie.find(params["movie_entry_number"])
        
        @movie.save
        
        render("movies/edit_movie.html.erb")
    end
    
    def update
        @movie = Movie.find(params[:movie_entry_number])
        
        
        @movie.save
        
        render("movies/update_movie.html.erb")
    end
    
    def destroy
        @movie_delete = Movie.find(params["adios_movie_number"])
        
        @movie_delete_id = params[:adios_movie_number]
        
        @movie_delete.destroy
        @movie_delete.save
                
        @remaining_count_movie = Movie.count
    
        render("movies/destroy_movie.html.erb")
        # redirect_to("movies/index.html.erb")
    end
    
end