# frozen_string_literal: true

class BlogController < ApplicationController
  impressionist
  def index
    # breadcrumb
    add_breadcrumb 'Blog', :blog_index_path
    @blog_first = Blog.all.order(created_at: :DESC).first
    @page = params[:page].to_i
    @popular_blogs = Blog.popular

    @search = Blog.ransack(params[:q])
    @categories = CategoryService.new.call
    @locations = LocationService.new.call
    @search.sorts = 'created_at desc' if @search.sorts.empty?
    @blogs = @search.result(distinct: true).order(created_at: :DESC).page(params[:page]).per(3)
<<<<<<< HEAD
=======
    if @page > @blogs.total_pages
      redirect_to blog_index_url
    end
>>>>>>> feature/search-experience
    respond_to do |format|
      format.html
      format.json { render json: @blogs }
    end
  end
  
  def show
    @blog = Blog.find(params[:id])
    @popular_blogs = Blog.popular
<<<<<<< HEAD
=======
    @hashtags = Hashtag.all
    @categories = Category.all
>>>>>>> feature/search-experience

    @location_id = @blog.location_id
    @hot_exp = ExperienceService.new.hotexperience(@location_id)

    #recommend with hashtags and location in common
    @recommend_blogs_with_hashtags_and_location_in_common = Blog.hashtags_and_location_in_common(@blog)
    # breacrumb
    add_breadcrumb 'Blog', :blog_index_path
    add_breadcrumb @blog.blog_detail.title, :blog_path
  end

  def search
<<<<<<< HEAD
=======
    unless params[:q][:categories_category_name_in].nil?
      params[:q][:categories_category_name_in] = params[:q][:categories_category_name_in].gsub(' ',',').split(",")
      unless params[:q][:hashtags_tag_name_or_hashtags_tag_name_cont_any].nil?
        params[:q][:hashtags_tag_name_or_hashtags_tag_name_cont_any] = params[:q][:hashtags_tag_name_or_hashtags_tag_name_cont_any].gsub(' ',',').split(",")
        unless params[:q][:location_province_in].nil?
          params[:q][:location_province_in] = params[:q][:location_province_in].split(",")
        end
      end
    end
>>>>>>> feature/search-experience
    index
    render :index
  end
end
