ActiveAdmin.register BlogDetail do

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
  permit_params :title, :content

  index do
    selectable_column
    column :id
    column :title
    column :content    
    actions
  end

  filter :title
  filter :content

  form do |f|
    f.inputs do
      f.text_field :title
      f.input :content,  :as => :ckeditor
    end
    f.actions
  end
end
