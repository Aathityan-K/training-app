class CommentsController < ApplicationController

    def create
        @player = Player.find(params[:player_id])
        @player.comments.create(comment_param)
        redirect_to @player
    end

    private

    def comment_param
        params.require(:comment).permit(:body)
    end

end
