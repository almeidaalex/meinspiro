class PostsController < ApplicationController
    
    def index
      @posts =  Post.all.order(created_at: :desc)
    end

    def show
        @post = Post.find(params[:id])
        #redirect_to(@post)
    end

    def create 
        @post = Post.new(post_params)
        @post.friendlyUrl = @post.title.gsub(' ', '-').downcase
        @post.save
    end

    def destroy
        id = params[:id]
        Post.delete id
        redirect_to new_writer_path
    end
    
    private 

    def post_params 
        params.require(:post).permit(:author,:body, :title, :scheduled_to,:friendlyUrl)
    end
    
end
