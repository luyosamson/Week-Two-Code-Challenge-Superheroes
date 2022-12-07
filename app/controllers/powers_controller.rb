class PowersController < ApplicationController
class PowersController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :create_error
   
    
    def index
        powers = Power.all
        render json: powers, include: ['id','name','description']
    end

    def show
        power = find_power
        render json: power
    end

    def destroy
        power = find_power
        power.destroy
        head :no_content
    end

    def create
        power = Power.create!(power_param)
        render json: power,  status: 201
    end

    def update
        power = find_power
        power.update!(update_param)
        render json: power
    end

    private 

    def find_power
    Power.find(params[:id])
    end
    
    def render_not_found_response
    render json: { error: "Power not found" }, status: 404
    end

    def create_error
    render json: { error:  ["validation errors"]}, status: 422
    end

    def power_param
    params.permit(:name, :description)
    end

    def update_param
        params.permit(:description)
    end
end
end
