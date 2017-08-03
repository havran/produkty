class Documents::DocumentsController < ApplicationController

  before_action :set_document, only: [:edit, :show, :update, :destroy]

  # GET    /documents(.:format)           documents/documents#index
  def index
    @documents = Documents::Document.order(title: :asc).all
  end

  # POST   /documents(.:format)           documents/documents#create
  def create
    @document = Documents::Document.create(document_params)

    if @document.save
      redirect_to documents_path
    else
      render :new
    end
  end

  # GET    /documents/new(.:format)       documents/documents#new
  def new
    @document = Documents::Document.new
  end

  # GET    /documents/:id/edit(.:format)  documents/documents#edit
  def edit

  end

  # GET    /documents/:id(.:format)       documents/documents#show
  def show

  end

  # PATCH  /documents/:id(.:format)       documents/documents#update
  # PUT    /documents/:id(.:format)       documents/documents#update
  def update
    if @document.update(document_params)
      redirect_to documents_path
    else
      render :edit
    end
  end

  # DELETE /documents/:id(.:format)       documents/documents#destroy
  def destroy
    @document.destroy

    redirect_to documents_path
  end

  private

  def set_document
    @document = Documents::Document.find_by(id: params[:id])
  end

  def document_params
    params
      .require(:document)
      .permit(
        :title,
        {items_attributes: [:id, :title, :products_variant_id, :_destroy]}
      )
  end

end
