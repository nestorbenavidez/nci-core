class InsuranceRangesController < ApplicationController
  before_action :set_insurance_range, only: [:show, :edit, :update, :destroy]

  # GET /insurance_ranges
  # GET /insurance_ranges.json
  def index
    @insurance_ranges = InsuranceRange.all
  end

  # GET /insurance_ranges/1
  # GET /insurance_ranges/1.json
  def show
  end

  # GET /insurance_ranges/new
  def new
    @insurance_range = InsuranceRange.new
  end

  # GET /insurance_ranges/1/edit
  def edit
  end

  # POST /insurance_ranges
  # POST /insurance_ranges.json
  def create
    @insurance_range = InsuranceRange.new(insurance_range_params)

    respond_to do |format|
      if @insurance_range.save
        format.html { redirect_to @insurance_range, notice: 'Insurance range was successfully created.' }
        format.json { render :show, status: :created, location: @insurance_range }
      else
        format.html { render :new }
        format.json { render json: @insurance_range.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /insurance_ranges/1
  # PATCH/PUT /insurance_ranges/1.json
  def update
    respond_to do |format|
      if @insurance_range.update(insurance_range_params)
        format.html { redirect_to @insurance_range, notice: 'Insurance range was successfully updated.' }
        format.json { render :show, status: :ok, location: @insurance_range }
      else
        format.html { render :edit }
        format.json { render json: @insurance_range.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /insurance_ranges/1
  # DELETE /insurance_ranges/1.json
  def destroy
    @insurance_range.destroy
    respond_to do |format|
      format.html { redirect_to insurance_ranges_url, notice: 'Insurance range was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_insurance_range
      @insurance_range = InsuranceRange.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def insurance_range_params
      params.require(:insurance_range).permit(:name, :calculation_type_id)
    end
end
