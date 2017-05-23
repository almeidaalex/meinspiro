class HomeController < ApplicationController
    def index
        @show_video = false;
        @laranjas = Post.all
    end
    
end
