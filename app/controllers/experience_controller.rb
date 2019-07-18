class ExperienceController < ApplicationController
  def index
    @blogs = Experience.all.order(created_at: :DESC).page(params[:page]).per(3)
    @blog_first = Experience.all.order(created_at: :DESC).first
    @blog_count = Experience.count
    @page = params[:pagenum].to_i

    @bl_im1 = Experience.all.order(impressions_count: :DESC).first
    @bl_im2 = Experience.all.order(impressions_count: :DESC).second
    @bl_im3 = Experience.all.order(impressions_count: :DESC).third


    @search = Experience.ransack(params[:q])
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
    @blog = Experience.find(params[:id])
    @bl_im1 = Experience.all.order(impressions_count: :DESC).first
    @bl_im2 = Experience.all.order(impressions_count: :DESC).second
    @bl_im3 = Experience.all.order(impressions_count: :DESC).third

    # breacrumb
    add_breadcrumb 'Blog', :blog_index_path
    add_breadcrumb @blog.blog_detail.title, :blog_path
  end

end
