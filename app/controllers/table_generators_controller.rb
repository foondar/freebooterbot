class TableGeneratorsController < ApplicationController
  before_action :set_table_generator, only: [:show, :edit, :update, :destroy]

  # GET /table_generators
  # GET /table_generators.json
  def index
    @table_generators = TableGenerator.all
  end

  # GET /table_generators/1
  # GET /table_generators/1.json
  def show
  end

  # GET /table_generators/new
  def new
    @table_generator = TableGenerator.new
  end

  # GET /table_generators/1/edit
  def edit
  end

  # POST /table_generators
  # POST /table_generators.json
  def create
    @table_generator = TableGenerator.new(table_generator_params)

    respond_to do |format|
      if @table_generator.save
        format.html { redirect_to @table_generator, notice: 'Table generator was successfully created.' }
        format.json { render :show, status: :created, location: @table_generator }
      else
        format.html { render :new }
        format.json { render json: @table_generator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /table_generators/1
  # PATCH/PUT /table_generators/1.json
  def update
    respond_to do |format|
      if @table_generator.update(table_generator_params)
        format.html { redirect_to @table_generator, notice: 'Table generator was successfully updated.' }
        format.json { render :show, status: :ok, location: @table_generator }
      else
        format.html { render :edit }
        format.json { render json: @table_generator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /table_generators/1
  # DELETE /table_generators/1.json
  def destroy
    @table_generator.destroy
    respond_to do |format|
      format.html { redirect_to table_generators_url, notice: 'Table generator was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_table_generator
      @table_generator = TableGenerator.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def table_generator_params
      params.require(:table_generator).permit(:name, :contents)
    end
end
