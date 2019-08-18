class CardGeneratorsController < ApplicationController
  before_action :set_card_generator, only: [:show, :edit, :update, :destroy]

  # GET /card_generators
  # GET /card_generators.json
  def index
    @card_generators = CardGenerator.all
  end

  # GET /card_generators/1
  # GET /card_generators/1.json
  def show
  end

  # GET /card_generators/new
  def new
    @card_generator = CardGenerator.new
  end

  # GET /card_generators/1/edit
  def edit
  end

  # POST /card_generators
  # POST /card_generators.json
  def create
    @card_generator = CardGenerator.new(card_generator_params)

    respond_to do |format|
      if @card_generator.save
        format.html { redirect_to @card_generator, notice: 'Card generator was successfully created.' }
        format.json { render :show, status: :created, location: @card_generator }
      else
        format.html { render :new }
        format.json { render json: @card_generator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /card_generators/1
  # PATCH/PUT /card_generators/1.json
  def update
    respond_to do |format|
      if @card_generator.update(card_generator_params)
        format.html { redirect_to @card_generator, notice: 'Card generator was successfully updated.' }
        format.json { render :show, status: :ok, location: @card_generator }
      else
        format.html { render :edit }
        format.json { render json: @card_generator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /card_generators/1
  # DELETE /card_generators/1.json
  def destroy
    @card_generator.destroy
    respond_to do |format|
      format.html { redirect_to card_generators_url, notice: 'Card generator was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_card_generator
      @card_generator = CardGenerator.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def card_generator_params
      params.require(:card_generator).permit(:name, :contents)
    end
end
