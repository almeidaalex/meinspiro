class PostsController < ApplicationController
    
    # def index
    #   @posts =  Post.all.order(created_at: :desc)
    # end

    def show
        @post = Post.find(params[:id])
    end
 
    def create 
        @post = Post.new(post_params)
        @post.friendlyUrl = @post.title.gsub(' ', '-').downcase
        if @post.save
            redirect_to writer_index_path
        end
    end

    def destroy
        id = params[:id]
        Post.delete id
        redirect_to writer_index_path
    end

     def update 
        post = Post.find(params[:id])
        if post.update(post_params)
            redirect_to writer_index_path
        end
    end
    
    private 

    def post_params 
        params.require(:post).permit(:author,:body, :title, :scheduled_to,:friendlyUrl)
    end
    
end
