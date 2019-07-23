ActiveAdmin.register AdminUser do
  permit_params :email, :fullname, :avatar, :bio, :role_id
  
  index do
    selectable_column
    id_column
    column :email
    column :fullname
    column :role
    column :avatar
    column :bio
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end

  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs do
      f.input :email
      f.input :fullname
      f.input :avatar
      f.input :bio
      f.input :role_id
    end
    f.actions
  end

end
