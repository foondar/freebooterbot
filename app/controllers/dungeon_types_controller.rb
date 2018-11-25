class DungeonTypesController < ApplicationController
  before_action :set_dungeon_type, only: [:show, :edit, :update, :destroy]

  # GET /dungeon_types
  # GET /dungeon_types.json
  def index
    @dungeon_types = DungeonType.all
  end

  # GET /dungeon_types/1
  # GET /dungeon_types/1.json
  def show
  end

  # GET /dungeon_types/new
  def new
    @dungeon_type = DungeonType.new
  end

  # GET /dungeon_types/1/edit
  def edit
  end

  # POST /dungeon_types
  # POST /dungeon_types.json
  def create
    @dungeon_type = DungeonType.new(dungeon_type_params)

    respond_to do |format|
      if @dungeon_type.save
        format.html { redirect_to @dungeon_type, notice: 'Dungeon type was successfully created.' }
        format.json { render :show, status: :created, location: @dungeon_type }
      else
        format.html { render :new }
        format.json { render json: @dungeon_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dungeon_types/1
  # PATCH/PUT /dungeon_types/1.json
  def update
    respond_to do |format|
      if @dungeon_type.update(dungeon_type_params)
        format.html { redirect_to @dungeon_type, notice: 'Dungeon type was successfully updated.' }
        format.json { render :show, status: :ok, location: @dungeon_type }
      else
        format.html { render :edit }
        format.json { render json: @dungeon_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dungeon_types/1
  # DELETE /dungeon_types/1.json
  def destroy
    @dungeon_type.destroy
    respond_to do |format|
      format.html { redirect_to dungeon_types_url, notice: 'Dungeon type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dungeon_type
      @dungeon_type = DungeonType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dungeon_type_params
      params.require(:dungeon_type).permit(:name, :background, :detail, :backgrounds, :details, :connections, :common_areas, :unique_areas, :features, :finds, :dressings)
    end
end
