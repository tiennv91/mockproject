ActiveAdmin.register ExperienceDetail do

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

  permit_params :title, :description, :image, :price_adult, :price_children, :price_infant, :duration, :age, :language, :experience
  
  index do
    selectable_column
    id_column
    column :title
    column :description
    column :image
    column :price_adult
    column :price_children
    column :price_infant
    column :duration
    column :age
    column :language
    column :experience_id
    actions
  end
  
  form do |f|
    f.inputs do
      f.input :title
      f.input :description
      f.input :image
      f.input :price_adult
      f.input :price_children
      f.input :price_infant
      f.input :duration
      f.input :age
      f.input :language
      f.input :experience_id
    end
    f.actions
  end

end
