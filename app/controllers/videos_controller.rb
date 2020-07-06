class VideosController < ApplicationController
	before_action :set_course, only: [:show, :edit, :update, :destroy]

	def index
		@videos = Video.all
	end

	def show
	end

	def new
    @video = Video.new
  end

  def create
    @video = Video.new(video_params)
    if @video.save
      flash[:success] = "Object successfully created"
      redirect_to @video
    else
      flash[:alert] = "Something went wrong"
      render 'new'
    end
  end

  def edit
  end

  def update
    if @video.update(video_params)
      redirect_to @video, notice: 'Video Create Succesfully'
    else
      render :edit
    end
  end

  def destroy
    @video.destroy
    redirect_to videos_url, notice: 'Video was successfully destroyed.'
  end

  private

  def set_video
    @video = Video.find(params[:id])
  end

  def video_params
    params.require(:course).permit(:name, :url)
	end
	
end
