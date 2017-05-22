class HomeController < ApplicationController
    def index
        @laranjas = Post.all
    end

    def create
    end
    
end
