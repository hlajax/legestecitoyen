require 'test_helper'

class SondagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sondage = sondages(:one)
  end

  test "should get index" do
    get sondages_url
    assert_response :success
  end

  test "should get new" do
    get new_sondage_url
    assert_response :success
  end

  test "should create sondage" do
    assert_difference('Sondage.count') do
      post sondages_url, params: { sondage: { administrateur_id: @sondage.administrateur_id, description: @sondage.description, image: @sondage.image, slug: @sondage.slug, titre: @sondage.titre } }
    end

    assert_redirected_to sondage_url(Sondage.last)
  end

  test "should show sondage" do
    get sondage_url(@sondage)
    assert_response :success
  end

  test "should get edit" do
    get edit_sondage_url(@sondage)
    assert_response :success
  end

  test "should update sondage" do
    patch sondage_url(@sondage), params: { sondage: { administrateur_id: @sondage.administrateur_id, description: @sondage.description, image: @sondage.image, slug: @sondage.slug, titre: @sondage.titre } }
    assert_redirected_to sondage_url(@sondage)
  end

  test "should destroy sondage" do
    assert_difference('Sondage.count', -1) do
      delete sondage_url(@sondage)
    end

    assert_redirected_to sondages_url
  end
end
