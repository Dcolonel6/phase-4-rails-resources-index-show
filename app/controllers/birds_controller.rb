class BirdsController < ApplicationController
    def index 
        render json: Bird.all, status: :ok
    end
    
    def show 
        birdie = Bird.find_by(id:params[:id])
        #byebug
        if birdie
            render json: birdie, status: :ok 
        else
            render json: { error: "Bird was not found"}, status: :not_found
        end
    end
end
