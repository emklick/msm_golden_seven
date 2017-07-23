class DirectorsController < ApplicationController
    
    def new_form
        
        render ("directors/new_form_director.html.erb")
    end
    
    def create
        d = Director.new

        
        d.save
        
        
        @current_count_directors = Director.count
        
        render ("directors/create_director.html.erb")
    end
    
    def index
        
        @list_of_directors = Director.order(:created_at => :desc)
    
        render ("directors/index_directors.html.erb")
    end
    
    def show
        @director = Director.find(params["director_number"])
        
        render ("directors/show_director.html.erb")
    end
    
    def edit
        @director = Director.find(params["director_number"])
        
        render ("directors/edit_director.html.erb")
    end
    
    def update
        d = Director.find(params[:director_number])
        
        d.name = params[:director_name]
        d.bio = params[:director_bio]
        d.dob = params[:director_dob]
        
        d.save
        
        render ("directors/update_director.html.erb")
    end
    
    def destroy
        d = Director.find(params["adios_director_number"])
        
        @director_delete_id = params[:adios_director_number]
        
        d.destroy
        
        @remaining_count_director = Director.count
        
        d.save
        
        render ("directors/destroy_director.html.erb")
    end
    
end