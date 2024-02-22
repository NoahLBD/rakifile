class AudioPostsController < ApplicationController
  before_action :set_audio_post, only: %i[ show edit update destroy ]

  # GET /audio_posts or /audio_posts.json
  def index
    @audio_posts = AudioPost.all
  end

  # GET /audio_posts/1 or /audio_posts/1.json
  def show
  end

  # GET /audio_posts/new
  def new
    @audio_post = AudioPost.new
  end

  # GET /audio_posts/1/edit
  def edit
  end

  # POST /audio_posts or /audio_posts.json
  def create
    @audio_post = AudioPost.new(audio_post_params)

    respond_to do |format|
      if @audio_post.save
        format.html { redirect_to audio_post_url(@audio_post), notice: "Audio post was successfully created." }
        format.json { render :show, status: :created, location: @audio_post }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @audio_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /audio_posts/1 or /audio_posts/1.json
  def update
    respond_to do |format|
      if @audio_post.update(audio_post_params)
        format.html { redirect_to audio_post_url(@audio_post), notice: "Audio post was successfully updated." }
        format.json { render :show, status: :ok, location: @audio_post }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @audio_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /audio_posts/1 or /audio_posts/1.json
  def destroy
    @audio_post.destroy!

    respond_to do |format|
      format.html { redirect_to audio_posts_url, notice: "Audio post was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_audio_post
      @audio_post = AudioPost.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def audio_post_params
      params.require(:audio_post).permit(:Name, :Author_name, :Image, :Description)
    end
end
