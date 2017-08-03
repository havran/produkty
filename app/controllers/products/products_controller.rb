class Products::ProductsController < ApplicationController

  before_action :set_product, only: [:edit, :show, :update, :destroy]

  # GET    /products(.:format)           products/products#index
  def index
    @products = Products::Product.order(title: :asc).all
  end

  # POST   /products(.:format)           products/products#create
  def create
    @product = Products::Product.create(product_params)

    if @product.save
      redirect_to products_path
    else
      render :new
    end
  end

  # GET    /products/new(.:format)       products/products#new
  def new
    @product = Products::Product.new
  end

  # GET    /products/:id/edit(.:format)  products/products#edit
  def edit

  end

  # GET    /products/:id(.:format)       products/products#show
  def show

  end

  # PATCH  /products/:id(.:format)       products/products#update
  # PUT    /products/:id(.:format)       products/products#update
  def update
    if @product.update(product_params)
      redirect_to products_path
    else
      render :edit
    end
  end

  # DELETE /products/:id(.:format)       products/products#destroy
  def destroy
    @product.destroy

    redirect_to products_path
  end

  private

  def set_product
    @product = Products::Product.find_by(id: params[:id])
  end

  def product_params
    params
      .require(:product)
      .permit(
        :title,
        {variants_attributes: [:id, :title, :_destroy]}
      )
  end

end
