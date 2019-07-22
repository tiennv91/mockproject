class ExperienceController < ApplicationController
  def index
    add_breadcrumb 'Experience', :experience_index_path
    @experiences = Experience.all.order(updated_at: :DESC).page(params[:page]).per(6)
    @hot_exp = ExperienceService.new.latest
    @experience_count = Experience.count
    @page = params[:pagenum].to_i
    @last_page = @experiences.total_pages

    @search = Experience.ransack(params[:q])
    @categories = CategoryService.new.call
    @locations = LocationService.new.call
    @search.sorts = 'experience_details.title desc' if @search.sorts.empty?
    @experiences = @search.result(distinct: true).order(created_at: :DESC).page(params[:page]).per(6)

    respond_to do |format|
      format.html
      format.json { render json: @experiences }
    end
  end

  def show
    @experience = Experience.find(params[:id])
    @recommends = ExperienceService.new.recommend(@experience)
    # @exp_im2 = Experience.all.order(impressions_count: :DESC).second
    # @exp_im3 = Experience.all.order(impressions_count: :DESC).third

    # breacrumb
    add_breadcrumb 'Experience', :experience_index_path
    add_breadcrumb @experience.experience_detail.title, :experience_path
  end

  def search
    CategoryService.new.search
    index
    render :index
  end 
  
  def application_form
  end

  def confirm  
  end

  def send_request
  end

  def payment
  end

  def complete
  end

end
