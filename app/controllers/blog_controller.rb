# frozen_string_literal: true

class BlogController < ApplicationController
  impressionist
  def index
    # breadcrumb
    add_breadcrumb 'Blog', :blog_index_path
    @blogs = Blog.all.order(created_at: :DESC).page(params[:page]).per(3)
    @blog_first = Blog.all.order(created_at: :DESC).first
    @blog_count = Blog.count
    @page = params[:page].to_i
    @popular_blogs = Blog.popular

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
  
  # def page_count
  #   @blog_count = Blog.count
  #   @page = params[:page].to_i
  #   if @page == 0
  #     if @blog_count < 3
  #       @blog_count
  #     else
  #       3
  #     end
  #   elsif @page > 0
  #     if @page == @blogs.total_pages
  #       @blog_count
  #     elsif @page > @blogs.total_pages
  #       @page
  #     else
  #       3*@page
  #     end
  #   end
  #   page_count
  # end

  def show
    @blog = Blog.find(params[:id])
    @popular_blogs = Blog.popular
    @hashtags = Hashtag.all

    # breacrumb
    add_breadcrumb 'Blog', :blog_index_path
    add_breadcrumb @blog.blog_detail.title, :blog_path
  end

  def search
    unless params[:q][:categories_category_name_in].nil?
      params[:q][:categories_category_name_in] = params[:q][:categories_category_name_in].split(",")
      unless params[:q][:hashtags_tag_name_or_hashtags_tag_name_cont_any].nil?
        params[:q][:hashtags_tag_name_or_hashtags_tag_name_cont_any] = params[:q][:hashtags_tag_name_or_hashtags_tag_name_cont_any].split(" ")
        unless params[:q][:location_province_in].nil?
          params[:q][:location_province_in] = params[:q][:location_province_in].split(",")
        end
      end
    end
    index
    render :index
  end
end
