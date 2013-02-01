class HomeController < ApplicationController
  include ActionView::Helpers::TextHelper
  def index
    @title = "Home"
    @posts = Post.find(:all, :order => "created_at desc")
    @posts.each { |post| post.body = RedCloth.new(sanitize(post.body),[:filter_html, :filter_styles, :filter_classes, :filter_ids]).to_html } 
  end

  def aboutme
    @title = "About Me"
  end

  def contact
    @title = "Contact"
  end

  def presentations
    @title = "Presentations"
  end

end
