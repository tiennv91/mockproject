class TopController < ApplicationController
  def index
    @popular_blogs = Blog.popular
  end
end
