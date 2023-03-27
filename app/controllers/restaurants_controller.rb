class RestaurantsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :record_error
  
    def index
      all_restaurants = Restaurant.all
      render json: all_restaurants, except: [ :created_at, :updated_at ]
    end
  
    def show
      render json: find_id, except: [:created_at, :updated_at], include: [pizzas: { except: [:created_at, :updated_at] } ]
    end
  
    def create
      new_restaurant = Restaurant.create!(allowed_params)
      render json: new_restaurant, except: [:created_at, :updated_at]
    end
  
    def destroy
      find_id.destroy!
    end
  
    private
  
    def find_id
      restaurants = Restaurant.find(params[:id])
    end
  
    def allowed_params
      params.permit(:name, :address)
    end
  
    def record_error
      render json: { error: 'Restaurant not found' }
    end
  end