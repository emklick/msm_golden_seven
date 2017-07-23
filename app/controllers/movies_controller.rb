class MoviesController < ApplicationController
    
    def new_form
        
        render("movies/new_form_movie.html.erb")
    end
    
    def create
        m = Movie.new
        
        m.title = params[:movie_title]
        m.year = params[:movie_year]
        m.duration = params[:movie_duration]
        m.description = params[:movie_description]
        m.image_url = params[:image_url]

        m.save
        
        
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
        
        render("movies/edit_movie.html.erb")
    end
    
    def update
        m = Movie.find(params[:movie_entry_number])
        
        m.title = params[:movie_title]
        m.year = params[:movie_year]
        m.duration = params[:movie_duration]
        m.description = params[:movie_description]
    
        @movie_title = params[:movie_title]
        
        @movie_id = params[:movie_entry_number]
        
        m.save
        
        render("movies/update_movie.html.erb")
    end
    
    def destroy
        m = Movie.find(params["adios_movie_number"])
        
        @movie_delete_id = params[:adios_movie_number]
        
        m.destroy
        
        m.save
                
        @remaining_count_movie = Movie.count
    
        render("movies/destroy_movie.html.erb")
        redirect("movies/index.html.erb")
    end
    
end