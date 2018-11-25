class DungeonsController < ApplicationController
  before_action :set_dungeon, only: [:show, :edit, :update, :destroy]

  # GET /dungeons
  # GET /dungeons.json
  def index
    @dungeons = Dungeon.all
  end

  # GET /dungeons/1
  # GET /dungeons/1.json
  def show
  end

  # GET /dungeons/new
  def new
    @dungeon = Dungeon.generate
    @dungeon_type = @dungeon.dungeon_type
  end

  # GET /dungeons/1/edit
  def edit
  end

  # POST /dungeons
  # POST /dungeons.json
  def create
    @dungeon = Dungeon.new(dungeon_params)
    @dungeon.dungeon_type_id = 1

    respond_to do |format|
      if @dungeon.save
        format.html { redirect_to @dungeon, notice: 'Dungeon was successfully created.' }
        format.json { render :show, status: :created, location: @dungeon }
      else
        format.html { render :new }
        format.json { render json: @dungeon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dungeons/1
  # PATCH/PUT /dungeons/1.json
  def update
    respond_to do |format|
      if @dungeon.update(dungeon_params)
        format.html { redirect_to @dungeon, notice: 'Dungeon was successfully updated.' }
        format.json { render :show, status: :ok, location: @dungeon }
      else
        format.html { render :edit }
        format.json { render json: @dungeon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dungeons/1
  # DELETE /dungeons/1.json
  def destroy
    @dungeon.destroy
    respond_to do |format|
      format.html { redirect_to dungeons_url, notice: 'Dungeon was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dungeon
      @dungeon = Dungeon.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dungeon_params
      params.require(:dungeon).permit(:name, :size, :themes, :overview, :dungeon_type_id, :background, :detail)
    end
end
