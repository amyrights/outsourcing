require 'test_helper'

class CompanyProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @company_profile = company_profiles(:one)
  end

  test "should get index" do
    get company_profiles_url
    assert_response :success
  end

  test "should get new" do
    get new_company_profile_url
    assert_response :success
  end

  test "should create company_profile" do
    assert_difference('CompanyProfile.count') do
      post company_profiles_url, params: { company_profile: { facebook: @company_profile.facebook, headquarters_city: @company_profile.headquarters_city, headquarters_country_code: @company_profile.headquarters_country_code, headquarters_state_code: @company_profile.headquarters_state_code, linkedin: @company_profile.linkedin, summary: @company_profile.summary, twitter: @company_profile.twitter, website: @company_profile.website } }
    end

    assert_redirected_to company_profile_url(CompanyProfile.last)
  end

  test "should show company_profile" do
    get company_profile_url(@company_profile)
    assert_response :success
  end

  test "should get edit" do
    get edit_company_profile_url(@company_profile)
    assert_response :success
  end

  test "should update company_profile" do
    patch company_profile_url(@company_profile), params: { company_profile: { facebook: @company_profile.facebook, headquarters_city: @company_profile.headquarters_city, headquarters_country_code: @company_profile.headquarters_country_code, headquarters_state_code: @company_profile.headquarters_state_code, linkedin: @company_profile.linkedin, summary: @company_profile.summary, twitter: @company_profile.twitter, website: @company_profile.website } }
    assert_redirected_to company_profile_url(@company_profile)
  end

  test "should destroy company_profile" do
    assert_difference('CompanyProfile.count', -1) do
      delete company_profile_url(@company_profile)
    end

    assert_redirected_to company_profiles_url
  end
end
