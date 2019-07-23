# frozen_string_literal: true

class BlogController < ApplicationController
  impressionist
  def index
    # breadcrumb
    add_breadcrumb 'Blog', :blog_index_path
    @blog_first = Blog.all.order(created_at: :DESC).first
    @page = params[:page].to_i
    @popular_blogs = Blog.popular
    @categories = Category.all
    @locations = Location.all

    @search = Blog.ransack(params[:q])
    @search.sorts = 'created_at desc' if @search.sorts.empty?
    @blogs = @search.result(distinct: true).order(created_at: :DESC).page(params[:page]).per(3)
    respond_to do |format|
      format.html
      format.json { render json: @blogs }
    end
  end
  
  def show
    @blog = Blog.find(params[:id])
    @popular_blogs = Blog.popular
    @hashtags = Hashtag.all

    # breacrumb
    add_breadcrumb 'Blog', :blog_index_path
    add_breadcrumb @blog.blog_detail.title, :blog_path
  end

  def search
    
    index
    render :index
  end
end
