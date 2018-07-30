class ArticlesController < ApplicationController

    def index 
        @article = Article.all
    end

    def show
        @article = Article.find(params[:id])
    end

    def new

    end
    
    def edit
        @article = Article.find(params[:id])
    end

    def update
        @article = Article.find(params[:id])
        @article.update(article_params)
        redirect_to root_path
    end

    def create
        @article = Article.new(articles_params)
        @article.save
        redirect_to root_path
    end

    private def article_params
        params.require(:article).permit(:title, :author, :body)
    end

    private def articles_params
        params.require(:articles).permit(:title, :author, :body)
    end

    def destroy 
        @article = Article.find(params[:id])
        @article.destroy
        redirect_to root_path
    end
end
