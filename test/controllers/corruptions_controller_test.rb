require 'test_helper'

class CorruptionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @corruption = corruptions(:one)
  end

  test "should get index" do
    get corruptions_url
    assert_response :success
  end

  test "should get new" do
    get new_corruption_url
    assert_response :success
  end

  test "should create corruption" do
    assert_difference('Corruption.count') do
      post corruptions_url, params: { corruption: { citoyen_id: @corruption.citoyen_id, corruption_cat_id: @corruption.corruption_cat_id, date: @corruption.date, description: @corruption.description, image: @corruption.image, slug: @corruption.slug, titre: @corruption.titre, ville: @corruption.ville } }
    end

    assert_redirected_to corruption_url(Corruption.last)
  end

  test "should show corruption" do
    get corruption_url(@corruption)
    assert_response :success
  end

  test "should get edit" do
    get edit_corruption_url(@corruption)
    assert_response :success
  end

  test "should update corruption" do
    patch corruption_url(@corruption), params: { corruption: { citoyen_id: @corruption.citoyen_id, corruption_cat_id: @corruption.corruption_cat_id, date: @corruption.date, description: @corruption.description, image: @corruption.image, slug: @corruption.slug, titre: @corruption.titre, ville: @corruption.ville } }
    assert_redirected_to corruption_url(@corruption)
  end

  test "should destroy corruption" do
    assert_difference('Corruption.count', -1) do
      delete corruption_url(@corruption)
    end

    assert_redirected_to corruptions_url
  end
end
