require 'test_helper'

class IndustryListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @industry_list = industry_lists(:one)
  end

  test "should get index" do
    get industry_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_industry_list_url
    assert_response :success
  end

  test "should create industry_list" do
    assert_difference('IndustryList.count') do
      post industry_lists_url, params: { industry_list: { child_count: @industry_list.child_count, index_hierarchy_data: @industry_list.index_hierarchy_data, name: @industry_list.name, parent_id: @industry_list.parent_id, pics: @industry_list.pics, search_visible: @industry_list.search_visible, tree_print: @industry_list.tree_print, url_slug: @industry_list.url_slug } }
    end

    assert_redirected_to industry_list_url(IndustryList.last)
  end

  test "should show industry_list" do
    get industry_list_url(@industry_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_industry_list_url(@industry_list)
    assert_response :success
  end

  test "should update industry_list" do
    patch industry_list_url(@industry_list), params: { industry_list: { child_count: @industry_list.child_count, index_hierarchy_data: @industry_list.index_hierarchy_data, name: @industry_list.name, parent_id: @industry_list.parent_id, pics: @industry_list.pics, search_visible: @industry_list.search_visible, tree_print: @industry_list.tree_print, url_slug: @industry_list.url_slug } }
    assert_redirected_to industry_list_url(@industry_list)
  end

  test "should destroy industry_list" do
    assert_difference('IndustryList.count', -1) do
      delete industry_list_url(@industry_list)
    end

    assert_redirected_to industry_lists_url
  end
end
