require "test_helper"

class AudioPostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @audio_post = audio_posts(:one)
  end

  test "should get index" do
    get audio_posts_url
    assert_response :success
  end

  test "should get new" do
    get new_audio_post_url
    assert_response :success
  end

  test "should create audio_post" do
    assert_difference("AudioPost.count") do
      post audio_posts_url, params: { audio_post: { Author_name: @audio_post.Author_name, Description: @audio_post.Description, Image: @audio_post.Image, Name: @audio_post.Name } }
    end

    assert_redirected_to audio_post_url(AudioPost.last)
  end

  test "should show audio_post" do
    get audio_post_url(@audio_post)
    assert_response :success
  end

  test "should get edit" do
    get edit_audio_post_url(@audio_post)
    assert_response :success
  end

  test "should update audio_post" do
    patch audio_post_url(@audio_post), params: { audio_post: { Author_name: @audio_post.Author_name, Description: @audio_post.Description, Image: @audio_post.Image, Name: @audio_post.Name } }
    assert_redirected_to audio_post_url(@audio_post)
  end

  test "should destroy audio_post" do
    assert_difference("AudioPost.count", -1) do
      delete audio_post_url(@audio_post)
    end

    assert_redirected_to audio_posts_url
  end
end
