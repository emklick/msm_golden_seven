class DirectorsController < ApplicationController
    
    def new_form
        
        render("directors/new_form_director.html.erb")
    end
    
    def create
        d = Director.new
        
        d.name = params["director_name"]
        d.bio = params["director_bio"]
        d.dob = params["director_dob"]        
        d.image_url = params["director_image"]
        
        d.save
        
        
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
        
        d.name = params["director_name"]
        d.bio = params["director_bio"]
        d.dob = params["director_dob"]        
        d.image_url = params["director_image"]
        
        d.save
        
        render("directors/edit_director.html.erb")
    end
    
    def update
        d = Director.find(params[:director_entry_number])
        
        d.name = params["director_name"]
        d.bio = params["director_bio"]
        d.dob = params["director_dob"]        
        d.image_url = params["director_image"]
        
        @director_name = params[:director_name] 
        
        @director_id = params[:director_entry_number]
        
        d.save
        
        render("directors/update_director.html.erb")
    end
    
    def destroy
        d = Director.find(params["adios_director_number"])
        
        @director_delete_id = params[:adios_director_number]
        
        d.destroy
        
        d.save
        
        @remaining_count_director = Director.count

        render("directors/destroy_director.html.erb")
        redirect("directors/index_directors.html.erb")
    end
    
end