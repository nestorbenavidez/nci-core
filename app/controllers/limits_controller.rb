class LimitsController < ApplicationController
  before_action :set_limit, only: [:show, :edit, :update, :destroy]

  # GET /limits
  # GET /limits.json
  def index
    @limits = Limit.all
  end

  # GET /limits/1
  # GET /limits/1.json
  def show
  end

  # GET /limits/new
  def new
    @limit = Limit.new
  end

  # GET /limits/1/edit
  def edit
  end

  # POST /limits
  # POST /limits.json
  def create
    @limit = Limit.new(limit_params)

    respond_to do |format|
      if @limit.save
        format.html { redirect_to @limit, notice: 'Limit was successfully created.' }
        format.json { render :show, status: :created, location: @limit }
      else
        format.html { render :new }
        format.json { render json: @limit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /limits/1
  # PATCH/PUT /limits/1.json
  def update
    respond_to do |format|
      if @limit.update(limit_params)
        format.html { redirect_to @limit, notice: 'Limit was successfully updated.' }
        format.json { render :show, status: :ok, location: @limit }
      else
        format.html { render :edit }
        format.json { render json: @limit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /limits/1
  # DELETE /limits/1.json
  def destroy
    @limit.destroy
    respond_to do |format|
      format.html { redirect_to limits_url, notice: 'Limit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_limit
      @limit = Limit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def limit_params
      params.require(:limit).permit(:name, :insurance_program_id)
    end
end
