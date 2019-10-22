require 'test_helper'

class CorruptionCatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @corruption_cat = corruption_cats(:one)
  end

  test "should get index" do
    get corruption_cats_url
    assert_response :success
  end

  test "should get new" do
    get new_corruption_cat_url
    assert_response :success
  end

  test "should create corruption_cat" do
    assert_difference('CorruptionCat.count') do
      post corruption_cats_url, params: { corruption_cat: { administrateur_id: @corruption_cat.administrateur_id, description: @corruption_cat.description, slug: @corruption_cat.slug, titre: @corruption_cat.titre } }
    end

    assert_redirected_to corruption_cat_url(CorruptionCat.last)
  end

  test "should show corruption_cat" do
    get corruption_cat_url(@corruption_cat)
    assert_response :success
  end

  test "should get edit" do
    get edit_corruption_cat_url(@corruption_cat)
    assert_response :success
  end

  test "should update corruption_cat" do
    patch corruption_cat_url(@corruption_cat), params: { corruption_cat: { administrateur_id: @corruption_cat.administrateur_id, description: @corruption_cat.description, slug: @corruption_cat.slug, titre: @corruption_cat.titre } }
    assert_redirected_to corruption_cat_url(@corruption_cat)
  end

  test "should destroy corruption_cat" do
    assert_difference('CorruptionCat.count', -1) do
      delete corruption_cat_url(@corruption_cat)
    end

    assert_redirected_to corruption_cats_url
  end
end
