class ArtistPostsController < ApplicationController
  before_action :set_artist_post, only: %i[ show edit update destroy ]

  # GET /artist_posts or /artist_posts.json
  def index
    @artist_posts = ArtistPost.all
  end

  # GET /artist_posts/1 or /artist_posts/1.json
  def show
  end

  # GET /artist_posts/new
  def new
    @artist_post = ArtistPost.new
  end

  # GET /artist_posts/1/edit
  def edit
  end

  # POST /artist_posts or /artist_posts.json
  def create
    @artist_post = ArtistPost.new(artist_post_params)

    respond_to do |format|
      if @artist_post.save
        format.html { redirect_to artist_post_url(@artist_post), notice: "Artist post was successfully created." }
        format.json { render :show, status: :created, location: @artist_post }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @artist_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artist_posts/1 or /artist_posts/1.json
  def update
    respond_to do |format|
      if @artist_post.update(artist_post_params)
        format.html { redirect_to artist_post_url(@artist_post), notice: "Artist post was successfully updated." }
        format.json { render :show, status: :ok, location: @artist_post }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @artist_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artist_posts/1 or /artist_posts/1.json
  def destroy
    @artist_post.destroy!

    respond_to do |format|
      format.html { redirect_to artist_posts_url, notice: "Artist post was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artist_post
      @artist_post = ArtistPost.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def artist_post_params
      params.require(:artist_post).permit(:image, :first_name, :name, :string, :stage_name, :soundcloud_link, :description, :instagram_link, :spotify_link, :twitter_link)
    end
end
