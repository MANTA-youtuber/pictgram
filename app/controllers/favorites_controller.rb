class FavoritesController < ApplicationController

  def index
    @favorite_topics = current_user.favorite_topics
    # favorites = Favorite.find_by(topic_id:params[:topic_id], topic_id: favorites)
    # favorites = Favorite.find_by( topic_id:favorites )
    topics = Topic.where('id = ?', params[:id])

    # @favorites = Topic.find_by(topic_id: topic[id])
    # favorite = Toipc.find_by(@favorites, user_id:current_user.id)

     # @favorites_count = Topic.where(favorites).count
     # @favorites_count = topics.favorite_users
  # @favorites_count = Favorite.find_by(:user_id).count
  # topic = Favoret.find (:topic.id)
  # @favorites_count = Favorite.where('topic_id = ?', params[:topic_id]).count
  # topic = Topic.find('id = ?': params[:topic_id])
  @favorites_count = Favorite.where(topics).count

  end

  def create
   favorite = Favorite.new
   favorite.user_id = current_user.id
   favorite.topic_id = params[:topic_id]

   if favorite.save
     redirect_to topics_path, success: 'お気に入りに登録しました'
   else
     redirect_to topics_path, danger: 'お気に入りに登録に失敗しました'
   end

  end

  def destroy
    favorites = Favorite.find_by(user_id:current_user.id, topic_id:params[:topic_id])
    favorites.destroy
    redirect_to topics_path
  end


end
