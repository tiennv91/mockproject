class ExperienceController < ApplicationController
  def index
    @experiences = Experience.all.order(created_at: :DESC).page(params[:page]).per(3)
    @experience_first = Experience.all.order(created_at: :DESC).first
    @experience_count = Experience.count
    @page = params[:pagenum].to_i

    @exp_im1 = Experience.all.order(impressions_count: :DESC).first
    @exp_im2 = Experience.all.order(impressions_count: :DESC).second
    @exp_im3 = Experience.all.order(impressions_count: :DESC).third


    @search = Experience.ransack(params[:q])
    @categories = Category.all
    @locations = Location.all
    @search.sorts = 'experience_details.title desc' if @search.sorts.empty?
    @experiences = @search.result(distinct: true).order(created_at: :DESC).page(params[:page]).per(3)

    respond_to do |format|
      format.html
      format.json { render json: @experiences }
    end
  end

  def show
    @experience = Experience.find(params[:id])
    @exp_im1 = Experience.all.order(impressions_count: :DESC).first
    @exp_im2 = Experience.all.order(impressions_count: :DESC).second
    @exp_im3 = Experience.all.order(impressions_count: :DESC).third

    # breacrumb
    add_breadcrumb 'Blog', :experience_index_path
    add_breadcrumb @experience.experience_detail.title, :experience_path
  end

end
