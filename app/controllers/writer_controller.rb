class WriterController < ApplicationController
    layout 'writer'
    protect_from_forgery with: :exception


    def index
        
    end

    def new 
        @allPosts = Post.all.order(created_at: :desc)
    end
end
