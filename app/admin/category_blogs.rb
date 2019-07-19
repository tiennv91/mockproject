ActiveAdmin.register CategoryBlog do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
  permit_params :blog, :category

  index do
    selectable_column
    id_column
    # column :category do
        column "Category" do |category|
          link_to category.category_id
        end
    # end
    column :blog_id
    actions
  end

  filter :category_id
  filter :blog_id

  form do |f|
    f.inputs do
      f.input :category
    end
    f.actions
  end
end
