class FieldClassesController < ApplicationController
  before_action :set_field_class, only: [:show, :edit, :update, :destroy]

  # GET /field_classes
  # GET /field_classes.json
  def index
    @field_classes = FieldClass.all
  end

  # GET /field_classes/1
  # GET /field_classes/1.json
  def show
  end

  # GET /field_classes/new
  def new
    @field_class = FieldClass.new
  end

  # GET /field_classes/1/edit
  def edit
  end

  # POST /field_classes
  # POST /field_classes.json
  def create
    @field_class = FieldClass.new(field_class_params)

    respond_to do |format|
      if @field_class.save
        format.html { redirect_to @field_class, notice: 'Field class was successfully created.' }
        format.json { render :show, status: :created, location: @field_class }
      else
        format.html { render :new }
        format.json { render json: @field_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /field_classes/1
  # PATCH/PUT /field_classes/1.json
  def update
    respond_to do |format|
      if @field_class.update(field_class_params)
        format.html { redirect_to @field_class, notice: 'Field class was successfully updated.' }
        format.json { render :show, status: :ok, location: @field_class }
      else
        format.html { render :edit }
        format.json { render json: @field_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /field_classes/1
  # DELETE /field_classes/1.json
  def destroy
    @field_class.destroy
    respond_to do |format|
      format.html { redirect_to field_classes_url, notice: 'Field class was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_field_class
      @field_class = FieldClass.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def field_class_params
      params.require(:field_class).permit(:name, :insurance_program)
    end
end
