class CommentsController < ApplicationController

  def create
    @comment = Comment.new(params[:comment])
    @comment.user_id = params[:user_id]
    @comment.article_id = params[:article_id]
    if @comment.save
      respond_to do |format|
        flash[:notice] = "Comment was Successfully created"
        #        @comments = Comment.find(:all, :conditions => ['article_id =?', params[:article_id]])
        format.html { redirect_to view_article_path(params[:user_id], params[:article_id] ) }
        format.js {}
                     
          
      end
    end
  end

end
