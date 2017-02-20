class HomeController < ApplicationController
  def index
  end

  def contact_us
  end

  def menu
    @sections = Section.all
    @foods = FoodItem.all
    if params[:section_id].present?
      @current_section = Section.find(params[:section_id])
      @foods = @current_section.food_items
    end
    if params[:sort_column] 
      @foods = @foods.order("#{params[:sort_column]} #{params[:sort_direction]}")
    end
  end

end


