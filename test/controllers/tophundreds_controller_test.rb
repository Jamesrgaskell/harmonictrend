require 'test_helper'

class TophundredsControllerTest < ActionController::TestCase
  setup do
    @tophundred = tophundreds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tophundreds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tophundred" do
    assert_difference('Tophundred.count') do
      post :create, tophundred: { artistname: @tophundred.artistname, genre: @tophundred.genre, lyrics: @tophundred.lyrics, rank: @tophundred.rank, songname: @tophundred.songname }
    end

    assert_redirected_to tophundred_path(assigns(:tophundred))
  end

  test "should show tophundred" do
    get :show, id: @tophundred
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tophundred
    assert_response :success
  end

  test "should update tophundred" do
    patch :update, id: @tophundred, tophundred: { artistname: @tophundred.artistname, genre: @tophundred.genre, lyrics: @tophundred.lyrics, rank: @tophundred.rank, songname: @tophundred.songname }
    assert_redirected_to tophundred_path(assigns(:tophundred))
  end

  test "should destroy tophundred" do
    assert_difference('Tophundred.count', -1) do
      delete :destroy, id: @tophundred
    end

    assert_redirected_to tophundreds_path
  end
end
