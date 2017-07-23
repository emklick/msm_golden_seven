class DirectorsController < ApplicationController
    
    def new_form
        
        render("directors/new_form_director.html.erb")
    end
    
    def create
        @director_new = Director.new

        @director_new.save
        
        
        @current_count_directors = Director.count
        
        render("directors/create_director.html.erb")
    end
    
    def index
        
        @list_of_directors = Director.order(:created_at => :desc)
    
        render("directors/index_directors.html.erb")
    end
    
    def show
        @director = Director.find(params[:director_entry_number])
        
        render("directors/show_director.html.erb")
    end
    
    def edit
        @director = Director.find(params["director_entry_number"])
        
        @director.save
        
        render("directors/edit_director.html.erb")
    end
    
    def update
        @director = Director.find(params[:director_entry_number])
        
        
        @director.save
        
        render("directors/update_director.html.erb")
    end
    
    def destroy
        @director_delete = Director.find(params["adios_director_number"])
        
        @director_delete_id = params[:adios_director_number]
        
        @director_delete.destroy
        @director_delete.save
        
        @remaining_count_director = Director.count

        render("directors/destroy_director.html.erb")
        # redirect_to("directors/index_directors.html.erb")
    end
    
end