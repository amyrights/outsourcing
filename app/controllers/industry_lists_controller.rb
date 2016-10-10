class IndustryListsController < ApplicationController
  before_action :set_industry_list, only: [:show, :edit, :update, :destroy]

  # GET /industry_lists
  # GET /industry_lists.json
  def index
    @industry_lists = IndustryList.all
  end

  # GET /industry_lists/1
  # GET /industry_lists/1.json
  def show
  end

  # GET /industry_lists/new
  def new
    @industry_list = IndustryList.new
  end

  # GET /industry_lists/1/edit
  def edit
  end

  # POST /industry_lists
  # POST /industry_lists.json
  def create
    @industry_list = IndustryList.new(industry_list_params)

    respond_to do |format|
      if @industry_list.save
        format.html { redirect_to @industry_list, notice: 'Industry list was successfully created.' }
        format.json { render :show, status: :created, location: @industry_list }
      else
        format.html { render :new }
        format.json { render json: @industry_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /industry_lists/1
  # PATCH/PUT /industry_lists/1.json
  def update
    respond_to do |format|
      if @industry_list.update(industry_list_params)
        format.html { redirect_to @industry_list, notice: 'Industry list was successfully updated.' }
        format.json { render :show, status: :ok, location: @industry_list }
      else
        format.html { render :edit }
        format.json { render json: @industry_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /industry_lists/1
  # DELETE /industry_lists/1.json
  def destroy
    @industry_list.destroy
    respond_to do |format|
      format.html { redirect_to industry_lists_url, notice: 'Industry list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_industry_list
      @industry_list = IndustryList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def industry_list_params
      params.require(:industry_list).permit(:name, :parent_id, :pics, :url_slug, :tree_print, :search_visible, :child_count, :index_hierarchy_data)
    end
end
