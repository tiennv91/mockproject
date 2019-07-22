class CategoryService
  def call
    @categories = Category.all
  end

  def search
    unless params[:q][:categories_category_name_in].nil?
      params[:q][:categories_category_name_in] = params[:q][:categories_category_name_in].split(",")
    end
    unless params[:q][:location_province_in].nil?
      params[:q][:location_province_in] = params[:q][:location_province_in].split(",")
    end
    # unless params[:q][:date_tag_name_in].nil?
    #   params[:q][:date_tag_name_in] = params[:q][:hashtags_tag_name_in].split(",")
    #   # @test = Blog.search(params[:q][:hashtags_tag_name_in]).to_sql
    # end
  end 
end 