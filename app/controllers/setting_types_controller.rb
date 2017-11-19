class SettingTypesController < ApplicationController
  before_action :set_setting_type, only: [:show, :edit, :update, :destroy]

  # GET /setting_types
  # GET /setting_types.json
  def index
    @setting_types = SettingType.all
  end

  # GET /setting_types/1
  # GET /setting_types/1.json
  def show
  end

  # GET /setting_types/new
  def new
    @setting_type = SettingType.new
  end

  # GET /setting_types/1/edit
  def edit
  end

  # POST /setting_types
  # POST /setting_types.json
  def create
    @setting_type = SettingType.new(setting_type_params)

    respond_to do |format|
      if @setting_type.save
        format.html { redirect_to @setting_type, notice: 'Setting type was successfully created.' }
        format.json { render :show, status: :created, location: @setting_type }
      else
        format.html { render :new }
        format.json { render json: @setting_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /setting_types/1
  # PATCH/PUT /setting_types/1.json
  def update
    respond_to do |format|
      if @setting_type.update(setting_type_params)
        format.html { redirect_to @setting_type, notice: 'Setting type was successfully updated.' }
        format.json { render :show, status: :ok, location: @setting_type }
      else
        format.html { render :edit }
        format.json { render json: @setting_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /setting_types/1
  # DELETE /setting_types/1.json
  def destroy
    @setting_type.destroy
    respond_to do |format|
      format.html { redirect_to setting_types_url, notice: 'Setting type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_setting_type
      @setting_type = SettingType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def setting_type_params
      params.require(:setting_type).permit(:name, :description)
    end
end
