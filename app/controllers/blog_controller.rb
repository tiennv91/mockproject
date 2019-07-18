# frozen_string_literal: true

class BlogController < ApplicationController
  impressionist

  def index
    # breadcrumb
    add_breadcrumb 'Blog', :blog_index_path
    @blogs = Blog.all.order(created_at: :DESC).page(params[:page]).per(3)
    @blog_first = Blog.all.order(created_at: :DESC).first
    @blog_count = Blog.count
    @page = params[:pagenum].to_i

    @bl_im1 = Blog.all.order(impressions_count: :DESC).first
    @bl_im2 = Blog.all.order(impressions_count: :DESC).second
    @bl_im3 = Blog.all.order(impressions_count: :DESC).third

    @search = Blog.ransack(params[:q])
    @categories = Category.all
    @locations = Location.all
    @search.sorts = 'blog_details.title desc' if @search.sorts.empty?
    @blogs = @search.result(distinct: true).order(created_at: :DESC).page(params[:page]).per(3)

    respond_to do |format|
      format.html
      format.json { render json: @blogs }
    end
  end

  def show
    @blog = Blog.find(params[:id])
    @bl_im1 = Blog.all.order(impressions_count: :DESC).first
    @bl_im2 = Blog.all.order(impressions_count: :DESC).second
    @bl_im3 = Blog.all.order(impressions_count: :DESC).third

    # breacrumb
    add_breadcrumb 'Blog', :blog_index_path
    add_breadcrumb @blog.blog_detail.title, :blog_path
  end

  def search
    index
    render :index
  end
end
