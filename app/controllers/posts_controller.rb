class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    respond_to do |format|
      if(@post.save)
        format.json { render json: @post.to_json }
        format.html { redirect_to @post,notice: 'Successfully created the post' }
      else
        format.json { render json: @post.errors.to_json}
        format.html { render action: new }
      end  
    end
  end


  def show
   @post = Post.find(params[:id])
  end

  private
  def post_params
    params.require(:post).permit(:date,:rationale)
  end
end
