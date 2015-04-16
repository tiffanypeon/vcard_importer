class VcardsController < ApplicationController
  before_action :set_vcard, only: [:show, :edit, :update, :destroy]

  # GET /vcards
  # GET /vcards.json
  def index
    @vcards = Vcard.all
  end

  # GET /vcards/1
  # GET /vcards/1.json
  def show
  end

  # GET /vcards/new
  def new
    @vcard = Vcard.new
  end

  # GET /vcards/1/edit
  def edit
  end

  # POST /vcards
  # POST /vcards.json
  def create
    @vcard = Vcard.new(vcard_params)

    respond_to do |format|
      if @vcard.save
        format.html { redirect_to @vcard, notice: 'Vcard was successfully created.' }
        format.json { render :show, status: :created, location: @vcard }
      else
        format.html { render :new }
        format.json { render json: @vcard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vcards/1
  # PATCH/PUT /vcards/1.json
  def update
    respond_to do |format|
      if @vcard.update(vcard_params)
        format.html { redirect_to @vcard, notice: 'Vcard was successfully updated.' }
        format.json { render :show, status: :ok, location: @vcard }
      else
        format.html { render :edit }
        format.json { render json: @vcard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vcards/1
  # DELETE /vcards/1.json
  def destroy
    @vcard.destroy
    respond_to do |format|
      format.html { redirect_to vcards_url, notice: 'Vcard was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vcard
      @vcard = Vcard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vcard_params
      params[:vcard]
    end
end
