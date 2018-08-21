# frozen_string_literal: true

ActiveAdmin.register User do
  permit_params :name, :email, :password, :password_confirmation

  index do
    selectable_column
    id_column
    column :name
    column :email
  end

  filter :email

  show do
    attributes_table do
      row :id
      row :name
      row :email
    end
  end
  
  form do |f|
    f.inputs do
      f.input :name
      if f.object.new_record?
        f.input :email
      end
      f.input :password
      if f.object.new_record?
        f.input :password_confirmation
      end
    end
    f.actions
  end
end
