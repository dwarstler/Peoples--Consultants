class PicturesController < ApplicationController
    def new
    end
    def index
      @picture = Picture.all
    end
    def show
      @picture = Picture.find(params[:id])
    end
    def new
      @picture = Picture.new
	  @picture.image = params[:file]
	  @picture.save!
    end
    def edit
      @picture = Picture.find(params[:id])
    end
    def create
      @picture = Picture.new(picture_params)
	  
      if @picture.save
        render 'new'
      else
        render @picture
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
      @picture = Picture.find(params[:id])    #correct?

      #if @post.update(params[:post].permit(:title, :content))
        #redirect_to @post
      else
        render 'edit'
      end
    end
    def destroy
    end
	
	private
		def set_picture
			@picture = Picture.find(params[:id])
		end
		
		def picture_params
			params[:picture]
		end
