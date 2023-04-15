class FavoritesController < ApplicationController
    before_action :authenticate_user!
  

    def index
      @articles = current_user.favorite_articles
    end


    def create
      @article = Article.find(params[:article_id])
      @favorite = current_user.favorites.build(article: @article)
      if @favorite.save
        redirect_back(fallback_location: root_path)
      else
        redirect_back(fallback_location: root_path, alert: "Unable to add favorite.")
      end
    end
  
    def destroy
      @article = Article.find(params[:article_id])
      @favorite = current_user.favorites.find_by(article_id: @article.id)
      @favorite.destroy
      redirect_back(fallback_location: root_path)
    end
  end
  