ActiveAdmin.register CategoryExperience do

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
  
  permit_params :experience, :category

  index do
    selectable_column
    id_column
    # column :category do
        column "Category" do |category|
          link_to category.category_id
        end
    # end
    column :experience_id
    actions
  end

  filter :category_name
  filter :experience_id

  form do |f|
    f.inputs do
      f.input :category
    end
    f.actions
  end
end
