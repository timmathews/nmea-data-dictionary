class ParameterGroupsController < ApplicationController
  before_action :set_parameter_group, only: [:show, :edit, :update, :destroy]

  # GET /parameter_groups
  # GET /parameter_groups.json
  def index
    @parameter_groups = ParameterGroup.all
  end

  # GET /parameter_groups/1
  # GET /parameter_groups/1.json
  def show
  end

  # GET /parameter_groups/new
  def new
    @parameter_group = ParameterGroup.new
  end

  # GET /parameter_groups/1/edit
  def edit
  end

  # POST /parameter_groups
  # POST /parameter_groups.json
  def create
    @parameter_group = ParameterGroup.new(parameter_group_params)

    respond_to do |format|
      if @parameter_group.save
        format.html { redirect_to @parameter_group, notice: 'Parameter group was successfully created.' }
        format.json { render action: 'show', status: :created, location: @parameter_group }
      else
        format.html { render action: 'new' }
        format.json { render json: @parameter_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parameter_groups/1
  # PATCH/PUT /parameter_groups/1.json
  def update
    respond_to do |format|
      if @parameter_group.update(parameter_group_params)
        format.html { redirect_to @parameter_group, notice: 'Parameter group was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @parameter_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parameter_groups/1
  # DELETE /parameter_groups/1.json
  def destroy
    @parameter_group.destroy
    respond_to do |format|
      format.html { redirect_to parameter_groups_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parameter_group
      @parameter_group = ParameterGroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def parameter_group_params
      params.require(:parameter_group).permit(:name, :description, :pgn, :priority, :default_rate, :database_version, :category, :type, :size, :repeating_fields, :is_known)
    end
end
