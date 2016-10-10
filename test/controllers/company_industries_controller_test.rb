require 'test_helper'

class CompanyIndustriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @company_industry = company_industries(:one)
  end

  test "should get index" do
    get company_industries_url
    assert_response :success
  end

  test "should get new" do
    get new_company_industry_url
    assert_response :success
  end

  test "should create company_industry" do
    assert_difference('CompanyIndustry.count') do
      post company_industries_url, params: { company_industry: { company_profile_id: @company_industry.company_profile_id, industry_list_id: @company_industry.industry_list_id, sort_order: @company_industry.sort_order } }
    end

    assert_redirected_to company_industry_url(CompanyIndustry.last)
  end

  test "should show company_industry" do
    get company_industry_url(@company_industry)
    assert_response :success
  end

  test "should get edit" do
    get edit_company_industry_url(@company_industry)
    assert_response :success
  end

  test "should update company_industry" do
    patch company_industry_url(@company_industry), params: { company_industry: { company_profile_id: @company_industry.company_profile_id, industry_list_id: @company_industry.industry_list_id, sort_order: @company_industry.sort_order } }
    assert_redirected_to company_industry_url(@company_industry)
  end

  test "should destroy company_industry" do
    assert_difference('CompanyIndustry.count', -1) do
      delete company_industry_url(@company_industry)
    end

    assert_redirected_to company_industries_url
  end
end
