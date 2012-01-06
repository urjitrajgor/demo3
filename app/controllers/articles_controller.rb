class ArticlesController < ApplicationController

  def new
    @user = User.find(params[:user_id])
    @article = Article.new
   
  end

  def create
    @user = User.find(params[:user_id])
    @article = Article.new(params[:article])
    @article.user_id = params[:user_id]
    @article.rate = 0
    respond_to do |format|
      if @article.save
        format.html { redirect_to user_article_path(@user,@article), :notice => "Article is successfully created"}
      end
    end
  end

  def show
    @user = User.find(params[:user_id])
    @article = Article.find(params[:id])
  end
  
  def edit
    @user = User.find(params[:user_id])
    @article = Article.find(params[:id])
  end

  def update
    @user = User.find(params[:user_id])
    @article = Article.find(params[:id])
    respond_to do |format|
      if @article.update_attributes(params[:article])
        format.html { redirect_to user_article_path(@user,@article), :notice => "Article is successfully Updated"}
      end
    end
  end

  def view_article
    @user = User.find(params[:user_id])
    @article = Article.find(params[:article_id])
    @comment = Comment.new
    @comments = Comment.find(:all, :conditions => ['article_id =? ', params[:article_id]])
    
  end

end
