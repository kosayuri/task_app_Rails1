class ApplicationController < ActionController::Base
    before_action:footer

    def footer
        @time = Time.now
        @pos = Post.all
    end
end
