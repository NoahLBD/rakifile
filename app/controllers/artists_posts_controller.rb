class ArtistsPostsController < ApplicationController
  before_action :set_artists_post, only: %i[ show edit update destroy ]

  # GET /artists_posts or /artists_posts.json
  def index
    @artists_posts = ArtistsPost.all
  end

  # GET /artists_posts/1 or /artists_posts/1.json
  def show
  end

  # GET /artists_posts/new
  def new
    @artists_post = ArtistsPost.new
  end

  # GET /artists_posts/1/edit
  def edit
  end

  # POST /artists_posts or /artists_posts.json
  def create
    @artists_post = ArtistsPost.new(artists_post_params)

    respond_to do |format|
      if @artists_post.save
        format.html { redirect_to artists_post_url(@artists_post), notice: "Artists post was successfully created." }
        format.json { render :show, status: :created, location: @artists_post }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @artists_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artists_posts/1 or /artists_posts/1.json
  def update
    respond_to do |format|
      if @artists_post.update(artists_post_params)
        format.html { redirect_to artists_post_url(@artists_post), notice: "Artists post was successfully updated." }
        format.json { render :show, status: :ok, location: @artists_post }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @artists_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artists_posts/1 or /artists_posts/1.json
  def destroy
    @artists_post.destroy!

    respond_to do |format|
      format.html { redirect_to artists_posts_url, notice: "Artists post was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artists_post
      @artists_post = ArtistsPost.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def artists_post_params
      params.require(:artists_post).permit(:image, :first_name, :name, :stage_name, :soundcloud_link, :description, :instagram_link, :spotify_link, :twitter_link)
    end
end
