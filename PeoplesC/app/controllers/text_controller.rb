class Text_controller < ApplicationController
    def new
    end
    def index
      @text = Text.all
    end
    def show
      @text = Text.find(params[:id])
    end
    def new
      @text = Text.new()
    end
    def edit
      @text = Text.find(params[:id])
    end
    def create
      file = params[:qqfile].is_a?(ActionDispatch::Http::UploadedFile) ? params[:qqfile] : params[:file]
      @text = Text.new
      @text.txt file   #todo: something here
      if @text.save
        render 'new'
      else
        render @text
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
      @text = Text.find(params[:id])    #correct?

    #  if @post.update(params[:post].permit(:title, :content))
     #   redirect_to @post
      #else
       # render 'edit'
      #end
    end
    def destroy
    end
  end
