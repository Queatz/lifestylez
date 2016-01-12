class LifeStylesController < ApplicationController
  before_action :set_life_style, only: [:show, :edit, :update, :destroy]

  # GET /life_styles
  # GET /life_styles.json
  def index
    @life_styles = LifeStyle.all
  end

  # GET /life_styles/1
  # GET /life_styles/1.json
  def show
  end

  # GET /life_styles/new
  def new
    @life_style = LifeStyle.new
  end

  # GET /life_styles/1/edit
  def edit
  end

  # POST /life_styles
  # POST /life_styles.json
  def create
    @life_style = LifeStyle.new(life_style_params)

    respond_to do |format|
      if @life_style.save
        format.html { redirect_to @life_style, notice: 'Life style was successfully created.' }
        format.json { render :show, status: :created, location: @life_style }
      else
        format.html { render :new }
        format.json { render json: @life_style.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /life_styles/1
  # PATCH/PUT /life_styles/1.json
  def update
    respond_to do |format|
      if @life_style.update(life_style_params)
        format.html { redirect_to @life_style, notice: 'Life style was successfully updated.' }
        format.json { render :show, status: :ok, location: @life_style }
      else
        format.html { render :edit }
        format.json { render json: @life_style.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /life_styles/1
  # DELETE /life_styles/1.json
  def destroy
    @life_style.destroy
    respond_to do |format|
      format.html { redirect_to life_styles_url, notice: 'Life style was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_life_style
      @life_style = LifeStyle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def life_style_params
      params.require(:life_style).permit(:user_id, :title, :description, :photo)
    end
end
