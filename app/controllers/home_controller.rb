class HomeController < ApplicationController
  def index
    @q = Article.ransack(params[:q])
    @articles = @q.result(distinct: true)
    @render_from = "index"
  end
end
