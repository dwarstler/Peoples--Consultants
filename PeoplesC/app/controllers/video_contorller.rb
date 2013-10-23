class Video_contorller < ApplicationController
    def new
    end
    def index
      @video = Video.all
    end
    def show
      @video = Picture.find(params[:id])
    end
    def new
      @video = Picture.new()
    end
    def edit
      @video = Picture.find(params[:id])
    end
    def create
      file = params[:qqfile].is_a?(ActionDispatch::Http::UploadedFile) ? params[:qqfile] : params[:file]
      @video = Picture.new
      @video.video file
      if @video.save
        render 'new'
      else
        render @video
      end
    end
    #@media.url = File.open('')
    #current_user.posts << @post_blog
    #Project.find(1).posts << @post_blog


    #if @post_blog.save
    #redirect_to @post_blog
    #else
    #render 'new'
    #end
    def update
      @video = Video.find(params[:id])    #correct?

      #if @post.update(params[:post].permit(:title, :content))
        #redirect_to @post
      #else
       # render 'edit'
      end
    end
    def destroy
    end
