class PostsController < ApplicationController
  include ActionView::Helpers::TextHelper


  #before_filter :authenticate_user!, :except => [:index, :show]
  load_and_authorize_resource
  #skip_authorization_check :only => [:show, :index]

  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.all.order(created_at: :desc)
    @title = "Blog Posts"

    @posts.each { |post| post.body = RedCloth.new(sanitize(post.body),[:filter_html, :filter_styles, :filter_classes, :filter_ids]).to_html } 

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @posts }
      format.atom # index.atom.builder
      format.rss # index.rss.builder
    end
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    @post = Post.find(params[:id])
    @title = @post.title

    @post.body = RedCloth.new(sanitize(@post.body),[:filter_html, :filter_styles, :filter_classes, :filter_ids]).to_html

    respond_to do |format|
      format.html # show.html.erb
      format.json { 
        @post.body = strip_tags @post.body
        render :json => @post
       }
    end
  end

  # GET /posts/new
  # GET /posts/new.json
  def new
    @post = Post.new
    @title = "New Post"

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @post }
    end
  end

  # GET /posts/1/edit
  def edit
    @post = Post.find(params[:id])
    @title = "Editing Post"
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(post_params)
    @title = "Creating Posts"

    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, :notice => 'Post was successfully created.' }
        format.json { render :json => @post, :status => :created, :location => @post }
      else
        format.html { render :action => "new" }
        format.json { render :json => @post.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /posts/1
  # PUT /posts/1.json
  def update
    @post = Post.find(params[:id])
    @title = "Updating Post"

    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, :notice => 'Post was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @post.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    respond_to do |format|
      format.html { redirect_to posts_url }
      format.json { head :no_content }
    end
  end

  def parse_textile
    render :text => RedCloth.new(sanitize(params[:data]),[:filter_html, :filter_styles, :filter_classes, :filter_ids]).to_html
  end

  private
    def post_params
      params.require(:post).permit(:title, :body, :user_id, comments_attributes: [:post_id, :name, :body ])
    end
end
