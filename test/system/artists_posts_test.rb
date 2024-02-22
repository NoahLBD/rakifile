require "application_system_test_case"

class ArtistsPostsTest < ApplicationSystemTestCase
  setup do
    @artists_post = artists_posts(:one)
  end

  test "visiting the index" do
    visit artists_posts_url
    assert_selector "h1", text: "Artists posts"
  end

  test "should create artists post" do
    visit artists_posts_url
    click_on "New artists post"

    fill_in "Description", with: @artists_post.description
    fill_in "First name", with: @artists_post.first_name
    fill_in "Image", with: @artists_post.image
    fill_in "Instagram link", with: @artists_post.instagram_link
    fill_in "Name", with: @artists_post.name
    fill_in "Soundcloud link", with: @artists_post.soundcloud_link
    fill_in "Spotify link", with: @artists_post.spotify_link
    fill_in "Stage name", with: @artists_post.stage_name
    fill_in "Twitter link", with: @artists_post.twitter_link
    click_on "Create Artists post"

    assert_text "Artists post was successfully created"
    click_on "Back"
  end

  test "should update Artists post" do
    visit artists_post_url(@artists_post)
    click_on "Edit this artists post", match: :first

    fill_in "Description", with: @artists_post.description
    fill_in "First name", with: @artists_post.first_name
    fill_in "Image", with: @artists_post.image
    fill_in "Instagram link", with: @artists_post.instagram_link
    fill_in "Name", with: @artists_post.name
    fill_in "Soundcloud link", with: @artists_post.soundcloud_link
    fill_in "Spotify link", with: @artists_post.spotify_link
    fill_in "Stage name", with: @artists_post.stage_name
    fill_in "Twitter link", with: @artists_post.twitter_link
    click_on "Update Artists post"

    assert_text "Artists post was successfully updated"
    click_on "Back"
  end

  test "should destroy Artists post" do
    visit artists_post_url(@artists_post)
    click_on "Destroy this artists post", match: :first

    assert_text "Artists post was successfully destroyed"
  end
end
