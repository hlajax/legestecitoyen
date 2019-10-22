require 'test_helper'

class PetitionCatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @petition_cat = petition_cats(:one)
  end

  test "should get index" do
    get petition_cats_url
    assert_response :success
  end

  test "should get new" do
    get new_petition_cat_url
    assert_response :success
  end

  test "should create petition_cat" do
    assert_difference('PetitionCat.count') do
      post petition_cats_url, params: { petition_cat: { description: @petition_cat.description, slug: @petition_cat.slug, titre: @petition_cat.titre } }
    end

    assert_redirected_to petition_cat_url(PetitionCat.last)
  end

  test "should show petition_cat" do
    get petition_cat_url(@petition_cat)
    assert_response :success
  end

  test "should get edit" do
    get edit_petition_cat_url(@petition_cat)
    assert_response :success
  end

  test "should update petition_cat" do
    patch petition_cat_url(@petition_cat), params: { petition_cat: { description: @petition_cat.description, slug: @petition_cat.slug, titre: @petition_cat.titre } }
    assert_redirected_to petition_cat_url(@petition_cat)
  end

  test "should destroy petition_cat" do
    assert_difference('PetitionCat.count', -1) do
      delete petition_cat_url(@petition_cat)
    end

    assert_redirected_to petition_cats_url
  end
end
