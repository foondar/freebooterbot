class DungeonAreasController < ApplicationController
  before_action :set_dungeon_area, only: [:show, :edit, :update, :destroy]

  # GET /dungeon_areas
  # GET /dungeon_areas.json
  def index
    @dungeon_areas = DungeonArea.all
  end

  # GET /dungeon_areas/1
  # GET /dungeon_areas/1.json
  def show
  end

  # GET /dungeon_areas/new
  def new
    @dungeon_area = DungeonArea.new
  end

  # GET /dungeon_areas/1/edit
  def edit
  end

  # POST /dungeon_areas
  # POST /dungeon_areas.json
  def create
    @dungeon_area = DungeonArea.new(dungeon_area_params)

    respond_to do |format|
      if @dungeon_area.save
        format.html { redirect_to @dungeon_area, notice: 'Dungeon area was successfully created.' }
        format.json { render :show, status: :created, location: @dungeon_area }
      else
        format.html { render :new }
        format.json { render json: @dungeon_area.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dungeon_areas/1
  # PATCH/PUT /dungeon_areas/1.json
  def update
    respond_to do |format|
      if @dungeon_area.update(dungeon_area_params)
        format.html { redirect_to @dungeon_area, notice: 'Dungeon area was successfully updated.' }
        format.json { render :show, status: :ok, location: @dungeon_area }
      else
        format.html { render :edit }
        format.json { render json: @dungeon_area.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dungeon_areas/1
  # DELETE /dungeon_areas/1.json
  def destroy
    @dungeon_area.destroy
    respond_to do |format|
      format.html { redirect_to dungeon_areas_url, notice: 'Dungeon area was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dungeon_area
      @dungeon_area = DungeonArea.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dungeon_area_params
      params.require(:dungeon_area).permit(:description, :dressing, :discoveries, :dangers, :notes)
    end
end
