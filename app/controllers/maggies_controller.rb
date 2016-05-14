class MaggiesController < ApplicationController
  before_action :set_maggies, only: [:show, :edit, :update, :destroy]

  # GET /maggies
  # GET /maggies.json
  def index
    @maggies = Maggie.all
  end

  # GET /maggies/1
  # GET /maggies/1.json
  def show
  end

  # GET /maggies/new
  def new
    @maggies = Maggie.new
  end

  # GET /maggies/1/edit
  def edit
  end

  # POST /maggies
  # POST /maggies.json
  def create
    @maggies = Maggie.new(maggies_params)

    respond_to do |format|
      if @maggies.save
        format.html { redirect_to @maggies, notice: 'Maggie was successfully created.' }
        format.json { render :show, status: :created, location: @maggy }
      else
        format.html { render :new }
        format.json { render json: @maggies.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /maggies/1
  # PATCH/PUT /maggies/1.json
  def update
    respond_to do |format|
      if @maggies.update(maggies_params)
        format.html { redirect_to @maggy, notice: 'Maggie was successfully updated.' }
        format.json { render :show, status: :ok, location: @maggy }
      else
        format.html { render :edit }
        format.json { render json: @maggy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /maggies/1
  # DELETE /maggies/1.json
  def destroy
    @maggies.destroy
    respond_to do |format|
      format.html { redirect_to maggies_url, notice: 'Maggie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_maggy
      @maggies = Maggie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def maggies_params
      params.require(:maggie).permit(:name, :description, :picture, :remark)
    end
end
