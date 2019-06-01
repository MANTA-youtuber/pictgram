class CommentsController < ApplicationController

  def create
    @topic = Topic.find(params[:topic_id])

    @topic.comments.create(comment_params)

      redirect_to topic_path(@topic),success: 'コメントを投稿しました!'

  end

  private
  def comment_params
    params.require(:comment).permit(:content, :topic_id, :user_id)
  end

end
