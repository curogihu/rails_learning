class ArticlesController < ApplicationController
   def new
       @article = Article.new
   end
   
   def create
       # inspect method returns an understandable string
       # render plain: params[:article].inspect
       
       @article = Article.new(article_params)
       @article.save
       
       redirect_to articles_show(@article)
   end
   
   private
    def article_params
        params.require(:article).permit(:title, :descritpion)
    
    end
end