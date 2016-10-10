class CompanyIndustriesController < ApplicationController
  before_action :set_company_industry, only: [:show, :edit, :update, :destroy]

  # GET /company_industries
  # GET /company_industries.json
  def index
    @company_industries = CompanyIndustry.all
  end

  # GET /company_industries/1
  # GET /company_industries/1.json
  def show
  end

  # GET /company_industries/new
  def new
    @company_industry = CompanyIndustry.new
  end

  # GET /company_industries/1/edit
  def edit
  end

  # POST /company_industries
  # POST /company_industries.json
  def create
    @company_industry = CompanyIndustry.new(company_industry_params)

    respond_to do |format|
      if @company_industry.save
        format.html { redirect_to @company_industry, notice: 'Company industry was successfully created.' }
        format.json { render :show, status: :created, location: @company_industry }
      else
        format.html { render :new }
        format.json { render json: @company_industry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /company_industries/1
  # PATCH/PUT /company_industries/1.json
  def update
    respond_to do |format|
      if @company_industry.update(company_industry_params)
        format.html { redirect_to @company_industry, notice: 'Company industry was successfully updated.' }
        format.json { render :show, status: :ok, location: @company_industry }
      else
        format.html { render :edit }
        format.json { render json: @company_industry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /company_industries/1
  # DELETE /company_industries/1.json
  def destroy
    @company_industry.destroy
    respond_to do |format|
      format.html { redirect_to company_industries_url, notice: 'Company industry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_company_industry
      @company_industry = CompanyIndustry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def company_industry_params
      params.require(:company_industry).permit(:company_profile_id, :industry_list_id, :sort_order)
    end
end
