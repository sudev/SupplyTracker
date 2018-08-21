# frozen_string_literal: true

ActiveAdmin.register ReliefCamp do
  permit_params :name, :coordinator_id, :latitude, :longitude, :address, :phone_number, :whatsapp_number, :email, :contact_person, :district_id, :code, user_ids: []
  actions :new, :create, :show, :edit, :update, :index

  filter :name
  filter :email
  filter :district
  filter :code

  index do
    selectable_column
    id_column
    column :name
    column :code
    column :contact_person
    column :location do |relief_camp|
      relief_camp.latitude.present? && relief_camp.longitude.present? ? "(#{relief_camp.latitude},#{relief_camp.longitude})" : 'N/A'
    end
    column :phone_number
    column :coordinator
    column :address
    column :district
    actions
  end

  form do |f|
    f.inputs do
      f.input :users, as: :select2_multiple
    end
    f.actions
  end

  show do
    tabs do
      tab :details do
        panel '' do
          attributes_table_for(resource) do
            row :id
            row :name
            row :code
            row :district
            row :location do |relief_camp|
              relief_camp.latitude.present? && relief_camp.longitude.present? ? "(#{relief_camp.latitude},#{relief_camp.longitude})" : 'N/A'
            end
            row :address
            row :coordinator
            row :phone_number
            row :whatsapp_number
            row :email
            row :contact_person
          end
        end
      end
      tab :users do
        panel '' do
          table_for resource.users do
            column :id do |user|
              link_to user.id, admin_user_path(user)
            end
            column :name
            column :email
          end
        end
      end
    end
  end
end
