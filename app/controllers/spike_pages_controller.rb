class SpikePagesController < ApplicationController
  before_action :set_spike_page, only: [:show, :edit, :update, :destroy]

  # GET /spike_pages
  # GET /spike_pages.json
  def index
    @spike_pages = 'This is where you put your link'
  end

  # GET /spike_pages/1
  # GET /spike_pages/1.json
  def show
  end

  # GET /spike_pages/new
  def new
    @spike_page = SpikePage.new
  end

  # GET /spike_pages/1/edit
  def edit
  end

  # POST /spike_pages
  # POST /spike_pages.json
  def create
    @spike_page = SpikePage.new(spike_page_params)

    respond_to do |format|
      if @spike_page.save
        format.html { redirect_to @spike_page, notice: 'Spike page was successfully created.' }
        format.json { render :show, status: :created, location: @spike_page }
      else
        format.html { render :new }
        format.json { render json: @spike_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /spike_pages/1
  # PATCH/PUT /spike_pages/1.json
  def update
    respond_to do |format|
      if @spike_page.update(spike_page_params)
        format.html { redirect_to @spike_page, notice: 'Spike page was successfully updated.' }
        format.json { render :show, status: :ok, location: @spike_page }
      else
        format.html { render :edit }
        format.json { render json: @spike_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spike_pages/1
  # DELETE /spike_pages/1.json
  def destroy
    @spike_page.destroy
    respond_to do |format|
      format.html { redirect_to spike_pages_url, notice: 'Spike page was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spike_page
      @spike_page = SpikePage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def spike_page_params
      params[:spike_page]
    end
end
