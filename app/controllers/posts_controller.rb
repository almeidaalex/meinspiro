class PostsController < ApplicationController
    
    def index
      @laranjas = Post.all
    end

    def show
        @post = Post.find(params[:id])
        #redirect_to(@post)
    end

    def create 
        @post = Post.new(post_params)
        @post.save
    end

    private 

    def post_params 
        params.require(:post).permit(:author,:body, :title)
    end
    
end
