class Admin::CategoriesController < ApplicationController
http_basic_authenticate_with :name => ENV['ADMIN_USER'].to_str, :password => ENV['ADMIN_PASSWORD'].to_str


 def index
    @categories = Category.order(id: :desc).all
    # raise @categories.inspect
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      redirect_to [:admin, :categories], notice: 'Category created!'
    else
      render :new
    end
  end

  private

  def category_params
     params.require(:category).permit(
       :id,
       :name
     )
  end

end
