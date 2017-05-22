class PostsController < ApplicationController
    
    def index
      @laranjas = Post.all
    end

    def show
        @post = Post.find(params[:id])
        #redirect_to(@post)
    end
    
end
