require "application_system_test_case"

class ArtistPostsTest < ApplicationSystemTestCase
  setup do
    @artist_post = artist_posts(:one)
  end

  test "visiting the index" do
    visit artist_posts_url
    assert_selector "h1", text: "Artist posts"
  end

  test "should create artist post" do
    visit artist_posts_url
    click_on "New artist post"

    fill_in "Description", with: @artist_post.description
    fill_in "First name", with: @artist_post.first_name
    fill_in "Image", with: @artist_post.image
    fill_in "Instagram link", with: @artist_post.instagram_link
    fill_in "Name", with: @artist_post.name
    fill_in "Soundcloud link", with: @artist_post.soundcloud_link
    fill_in "Spotify link", with: @artist_post.spotify_link
    fill_in "Stage name", with: @artist_post.stage_name
    fill_in "Twitter link", with: @artist_post.twitter_link
    click_on "Create Artist post"

    assert_text "Artist post was successfully created"
    click_on "Back"
  end

  test "should update Artist post" do
    visit artist_post_url(@artist_post)
    click_on "Edit this artist post", match: :first

    fill_in "Description", with: @artist_post.description
    fill_in "First name", with: @artist_post.first_name
    fill_in "Image", with: @artist_post.image
    fill_in "Instagram link", with: @artist_post.instagram_link
    fill_in "Name", with: @artist_post.name
    fill_in "Soundcloud link", with: @artist_post.soundcloud_link
    fill_in "Spotify link", with: @artist_post.spotify_link
    fill_in "Stage name", with: @artist_post.stage_name
    fill_in "Twitter link", with: @artist_post.twitter_link
    click_on "Update Artist post"

    assert_text "Artist post was successfully updated"
    click_on "Back"
  end

  test "should destroy Artist post" do
    visit artist_post_url(@artist_post)
    click_on "Destroy this artist post", match: :first

    assert_text "Artist post was successfully destroyed"
  end
end
