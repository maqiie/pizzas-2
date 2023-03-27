class RestaurantPizzasController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :error_message
  
    def create
      Pizza.find(params[:pizza_id])
      Restaurant.find(params[:restaurant_id])
      new_restaurant_pizza = RestaurantPizza.create(allowed_params)
      if new_restaurant_pizza.valid?
        render json: new_restaurant_pizza.pizza, except: [:created_at,:updated_at]
      else
        render json: { error: 'Validation errors' }, status: unprocessable_entity
      end
    end
  
    private
  
    def allowed_params
      params.permit(:price, :restaurant_id, :pizza_id)
    end
  
    def error_message
      render json: { error: 'Validation errors' }, status: unprocessable_entity
    end
  end