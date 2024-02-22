require "test_helper"

class ArtistsPostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @artists_post = artists_posts(:one)
  end

  test "should get index" do
    get artists_posts_url
    assert_response :success
  end

  test "should get new" do
    get new_artists_post_url
    assert_response :success
  end

  test "should create artists_post" do
    assert_difference("ArtistsPost.count") do
      post artists_posts_url, params: { artists_post: { description: @artists_post.description, first_name: @artists_post.first_name, image: @artists_post.image, instagram_link: @artists_post.instagram_link, name: @artists_post.name, soundcloud_link: @artists_post.soundcloud_link, spotify_link: @artists_post.spotify_link, stage_name: @artists_post.stage_name, twitter_link: @artists_post.twitter_link } }
    end

    assert_redirected_to artists_post_url(ArtistsPost.last)
  end

  test "should show artists_post" do
    get artists_post_url(@artists_post)
    assert_response :success
  end

  test "should get edit" do
    get edit_artists_post_url(@artists_post)
    assert_response :success
  end

  test "should update artists_post" do
    patch artists_post_url(@artists_post), params: { artists_post: { description: @artists_post.description, first_name: @artists_post.first_name, image: @artists_post.image, instagram_link: @artists_post.instagram_link, name: @artists_post.name, soundcloud_link: @artists_post.soundcloud_link, spotify_link: @artists_post.spotify_link, stage_name: @artists_post.stage_name, twitter_link: @artists_post.twitter_link } }
    assert_redirected_to artists_post_url(@artists_post)
  end

  test "should destroy artists_post" do
    assert_difference("ArtistsPost.count", -1) do
      delete artists_post_url(@artists_post)
    end

    assert_redirected_to artists_posts_url
  end
end
