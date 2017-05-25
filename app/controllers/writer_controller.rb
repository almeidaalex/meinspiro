class WriterController < ApplicationController
    layout 'writer'
    protect_from_forgery with: :exception
    #http_basic_authenticate_with name: "gamaray", password: "Grupo08", except: :index

    def index
        @allPosts = Post.all.order(created_at: :desc)
    end

    def new 
        @post = Post.new
    end

    def show
        @post = Post.find(params[:id])
    end
  
end
