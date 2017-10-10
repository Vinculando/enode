class PostulationsController < ApplicationController
  before_action :set_postulation, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_entity!
  # GET /applications
  # GET /applications.json
  def index
    publication = Publication.find(params[:publication_id])
    @postulations = publication.postulations.order('created_at DESC')
  end

  # GET /applications/1
  # GET /applications/1.json
  def show
  end

  # GET /applications/new
  def new
    @postulation = Postulation.new
  end

  # GET /applications/1/edit
  def edit
  end

  # POST /applications
  # POST /applications.json
  def create
    @postulation = Postulation.new(postulation_params)

    respond_to do |format|
      if @postulation.save
        format.html { redirect_to @postulation, notice: 'Application was successfully created.' }
        format.js
      else
        format.html { render :new }
        format.json { render json: @postulation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /applications/1
  # PATCH/PUT /applications/1.json
  def update
    respond_to do |format|
      if @postulation.update(postulation_params)
        format.html { redirect_to @postulation, notice: 'Application was successfully updated.' }
        format.json { render :show, status: :ok, location: @postulation }
      else
        format.html { render :edit }
        format.json { render json: @postulation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /applications/1
  # DELETE /applications/1.json
  def destroy
    @postulation.destroy
    respond_to do |format|
      format.html { redirect_to postulations_url, notice: 'Application was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_postulation
      @postulation = Postulation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def postulation_params
      params.require(:postulation).permit(:user_id, :publication_id, :contenido)
    end
end
