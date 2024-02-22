require "test_helper"

class ArtistPostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @artist_post = artist_posts(:one)
  end

  test "should get index" do
    get artist_posts_url
    assert_response :success
  end

  test "should get new" do
    get new_artist_post_url
    assert_response :success
  end

  test "should create artist_post" do
    assert_difference("ArtistPost.count") do
      post artist_posts_url, params: { artist_post: { description: @artist_post.description, first_name: @artist_post.first_name, image: @artist_post.image, instagram_link: @artist_post.instagram_link, name: @artist_post.name, soundcloud_link: @artist_post.soundcloud_link, spotify_link: @artist_post.spotify_link, stage_name: @artist_post.stage_name, string: @artist_post.string, twitter_link: @artist_post.twitter_link } }
    end

    assert_redirected_to artist_post_url(ArtistPost.last)
  end

  test "should show artist_post" do
    get artist_post_url(@artist_post)
    assert_response :success
  end

  test "should get edit" do
    get edit_artist_post_url(@artist_post)
    assert_response :success
  end

  test "should update artist_post" do
    patch artist_post_url(@artist_post), params: { artist_post: { description: @artist_post.description, first_name: @artist_post.first_name, image: @artist_post.image, instagram_link: @artist_post.instagram_link, name: @artist_post.name, soundcloud_link: @artist_post.soundcloud_link, spotify_link: @artist_post.spotify_link, stage_name: @artist_post.stage_name, string: @artist_post.string, twitter_link: @artist_post.twitter_link } }
    assert_redirected_to artist_post_url(@artist_post)
  end

  test "should destroy artist_post" do
    assert_difference("ArtistPost.count", -1) do
      delete artist_post_url(@artist_post)
    end

    assert_redirected_to artist_posts_url
  end
end
