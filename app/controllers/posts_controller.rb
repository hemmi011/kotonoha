class PostsController < ApplicationController
    def create
        post = current_user.posts.build(post_params)
        if post.save
            redirect_to event_path(post.event), success: "木の成長に貢献しました"
        else
            redirect_to event_path(post.event), alert: "木を成長するのに失敗しました" 
        end
    end

    private

    def post_params
        params.require(:post).permit(:content).merge(event_id: params[:event_id])
    end

end