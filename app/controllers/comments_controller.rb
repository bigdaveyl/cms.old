class CommentsController < ApplicationController
  load_and_authorize_resource

  def new
    @comment = Comment.new
  end

  def create
    @post = Post.find(params[:post_id])
    logger.debug "post found: #{@post.attributes.inspect}"
    @comment = @post.comments.new(comment_params)

    @comment.referrer = request.referer
    @comment.user_ip = request.remote_ip
    @comment.user_agent = request.env["HTTP_USER_AGENT"]

    respond_to do |format|
      unless @comment.spam?
        if @comment.save
          format.html { redirect_to(@post, :notice => 'Comment was successfully created!') }
        else
          format.html { redirect_to @post, :alert => 'Unable to add comment!' }
        end
      else
          format.html { redirect_to @post, :alert => 'Your comment is spam!' }
      end

    end
  end

  def show
    @comment = Comment.find(params[:id])
  end
 
  def destroy
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to post_path(@post)
  end

  private
    def comment_params
        params.require(:comment).permit(:name, :body, :post_id)
    end
end
