class Products::ProductsController < ApplicationController

  # GET    /products(.:format)           products/products#index
  def index
    @products = Products::Product.all
  end

  # POST   /products(.:format)           products/products#create
  # GET    /products/new(.:format)       products/products#new
  # GET    /products/:id/edit(.:format)  products/products#edit
  # GET    /products/:id(.:format)       products/products#show
  # PATCH  /products/:id(.:format)       products/products#update
  # PUT    /products/:id(.:format)       products/products#update
  # DELETE /products/:id(.:format)       products/products#destroy
end
