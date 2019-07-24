class DocumentsController < ApplicationController
  before_action :set_document, only: %i[show edit update destroy]

  def index
    @documents = Document.all
  end

  def show; end

  def new
    @document = Document.new
  end

  def edit; end

  def create
    @document = Document.new(document_params)
    respond_to do |format|
      if @document.save
        format.html do
          redirect_to @document,
                      notice: "Document was successfully created."
        end
        format.json { render :show, status: :created, location: @document }
      else
        format.html { render :new }
        format.json do
          render json: @document.errors,
                 status: :unprocessable_entity
        end
      end
    end
  end

  def update
    respond_to do |format|
      if @document.update(document_params)
        format.html do
          redirect_to @document,
                      notice: "Document was successfully updated."
        end
        format.json { render :show, status: :ok, location: @document }
      else
        format.html { render :edit }
        format.json do
          render json: @document.errors,
                 status: :unprocessable_entity
        end
      end
    end
  end

  def destroy
    @document.destroy
    respond_to do |format|
      format.html do
        redirect_to documents_url,
                    notice: "Document was successfully destroyed."
      end
      format.json { head :no_content }
    end
  end

  private

  def set_document
    @document = Document.find(params[:id])
  end

  def document_params
    params.require(:document).permit(
      :name, files: []
    ).merge(
      user_id: current_user.id,
    )
  end
end
