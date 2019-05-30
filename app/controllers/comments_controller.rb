class CommentsController < ApplicationController

  def create
    puts params[:topic_id]
    @topic = Topic.find(params[:topic_id])
    @topic.comments.create(comment_params)
# binding.pry
      flash[:notice] = 'コメントを投稿しました!'
      redirect_to topic_path(@topic)

  end

  def list
    @comments = Comment.all
  end


  private
  def comment_params
    params.require(:comment).permit(:content, :topic_id, :user_id)
  end

end
