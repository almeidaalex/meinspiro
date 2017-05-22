class PostsController < ApplicationController
    
    def index
      @laranjas = Post.all
    end
    
end
