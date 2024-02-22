require "application_system_test_case"

class AudioPostsTest < ApplicationSystemTestCase
  setup do
    @audio_post = audio_posts(:one)
  end

  test "visiting the index" do
    visit audio_posts_url
    assert_selector "h1", text: "Audio posts"
  end

  test "should create audio post" do
    visit audio_posts_url
    click_on "New audio post"

    fill_in "Author name", with: @audio_post.Author_name
    fill_in "Description", with: @audio_post.Description
    fill_in "Image", with: @audio_post.Image
    fill_in "Name", with: @audio_post.Name
    click_on "Create Audio post"

    assert_text "Audio post was successfully created"
    click_on "Back"
  end

  test "should update Audio post" do
    visit audio_post_url(@audio_post)
    click_on "Edit this audio post", match: :first

    fill_in "Author name", with: @audio_post.Author_name
    fill_in "Description", with: @audio_post.Description
    fill_in "Image", with: @audio_post.Image
    fill_in "Name", with: @audio_post.Name
    click_on "Update Audio post"

    assert_text "Audio post was successfully updated"
    click_on "Back"
  end

  test "should destroy Audio post" do
    visit audio_post_url(@audio_post)
    click_on "Destroy this audio post", match: :first

    assert_text "Audio post was successfully destroyed"
  end
end
