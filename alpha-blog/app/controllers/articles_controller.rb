class ArticlesController < ApplicationController
  def new
    @article = Article.new
  end
   
  def create
    # check passing values
    # render plain: params[:article].inspect
    # @article = Article.new(article_params)
    # @article.save
    
    # redirect_to articles_show(@article)
    # redirect_to article_path(@article)
    
    @article = Article.new(article_params)
    
    if @article.save
      # this message will be disappear when reload
      flash[:notice] = "Article was success fully created"
      redirect_to article_path(@article)
      
    else
      render 'new'
      
    end 
  end
  
  def show
    @article = Article.find(params[:id])
  end
   
  private
    def article_params
      params.require(:article).permit(:title, :description) 
    end
end