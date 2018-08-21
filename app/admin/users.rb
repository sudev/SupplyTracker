# frozen_string_literal: true

ActiveAdmin.register User do
  permit_params :name, :email, :password, :password_confirmation, :user_type

  index do
    selectable_column
    id_column
    column :name
    column :user_type
    column :email
    actions
  end

  filter :email

  show do
    tabs do
      tab :details do
        panel '' do
          attributes_table do
            row :id
            row :name
            row :user_type
            row :email
          end
        end
      end
      tab :camps do
        panel '' do
          table_for resource.relief_camps do
            column :id do |relief_camp|
              link_to relief_camp.id, admin_relief_camp_path(relief_camp)
            end
            column :name
            column :code
            column :district
            column :location do |relief_camp|
              relief_camp.latitude.present? && relief_camp.longitude.present? ? "(#{relief_camp.latitude},#{relief_camp.longitude})" : 'N/A'
            end
            column :address
            column :phone_number
          end
        end
      end
    end
  end
  
  form do |f|
    f.inputs do
      f.input :name
      if f.object.new_record?
        f.input :email
      end
      f.input :user_type, as: :select2, collection: User.user_type.options
      if f.object.new_record?
        f.input :password
        f.input :password_confirmation
      end
    end
    f.actions
  end
end
